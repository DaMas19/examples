using System;
using System.Collections.Generic;
using System.Net;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using ND.NDFC.lan.Command;
using ND.NDFC.lan.Command.Request;
using ND.NDFC.lan.Items;

namespace ND.NDFC.lan
{
    /// <summary>
    /// Class NdFcLan.
    /// Implements the <see cref="System.IDisposable" /></summary>
    /// <seealso cref="System.IDisposable" />
    public class NdFcLan : IDisposable
    {
        #region Private-Property

        /// <summary>
        /// The pump state interval
        /// </summary>
        private int _pumpStateInterval;

        /// <summary>
        /// The atg state interval
        /// </summary>
        private int _atgStateInterval;

        /// <summary>
        /// The CTS
        /// </summary>
        private CancellationTokenSource _cts;

        /// <summary>
        /// The tasks
        /// </summary>
        private readonly List<Task> _tasks = new List<Task>();

        /// <summary>
        /// Gets or sets the host.
        /// </summary>
        /// <value>The host.</value>
        private IPEndPoint _host;

        /// <summary>
        /// The name
        /// </summary>
        private int _id;

        /// <summary>
        /// The pump items
        /// </summary>
        private readonly NdFcItems2<NdFcPump> _pumpItems = new NdFcItems2<NdFcPump>();

        /// <summary>
        /// The pump items result
        /// </summary>
        private NdFcResult _pumpItemsResult = new NdFcResult();

        /// <summary>
        /// The atg items
        /// </summary>
        private readonly NdFcItems2<NdFcAtg> _atgItems = new NdFcItems2<NdFcAtg>();

        /// <summary>
        /// The atg items result
        /// </summary>
        private NdFcResult _atgItemsResult = new NdFcResult();

        #endregion

        #region Constructor

        /// <summary>
        /// Initializes a new instance of the <see cref="NdFcLan"/> class.
        /// </summary>
        public NdFcLan()
        {
        }

        #endregion

        #region Private-Methods

        /// <summary>
        /// Executes the atg state asynchronous.
        /// </summary>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task.</returns>
        private async Task ExecuteAtgStateAsync(CancellationToken ct)
        {
            while (!ct.IsCancellationRequested)
            {
                try
                {
                    var result = await GetAtgStatusList(ct);

                    _atgItemsResult = result;

                    if (result.Code != NdFcResultCode.GL_OK)
                    {
                        OnMessage?.Invoke(this,
                            new NdFcLanMessageEventArgs
                            {
                                Type = NdFcMessageType.Error,
                                Message = result.Message
                            });
                    }

                    await Task.Delay(TimeSpan.FromSeconds(_atgStateInterval), ct);
                }
                catch (OperationCanceledException)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Message = $"[atg state]-> receive cancel"
                        });
                }
                catch (Exception e)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = $"[atg state]-> error: {e.Message}"
                        });
                }
            }
        }

        /// <summary>
        /// Executes the pumps state asynchronous.
        /// </summary>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task.</returns>
        private async Task ExecutePumpsStateAsync(CancellationToken ct)
        {
            while (!ct.IsCancellationRequested)
            {
                try
                {
                    await Task.Delay(TimeSpan.FromSeconds(_pumpStateInterval), ct);

                    var result = await GetPumpStatusList(ct);

                    _pumpItemsResult = result;

                    if (result.Code != NdFcResultCode.GL_OK)
                    {
                        OnMessage?.Invoke(this,
                            new NdFcLanMessageEventArgs
                            {
                                Type = NdFcMessageType.Error,
                                Message = result.Message
                            });
                    }
                }
                catch (OperationCanceledException)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Message = $"[pump state]-> receive cancel"
                        });
                }
                catch (Exception e)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = $"[pump state]-> error: {e.Message}"
                        });
                }
            }
        }

        /// <summary>
        /// Gets the atg status list.
        /// </summary>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        private async Task<NdFcResult> GetAtgStatusList(CancellationToken ct)
        {
            try
            {
                var isListValueChange = false;

                if (_atgItems.Count > 0)
                {
                    var data = string.Empty;

                    foreach (var item in _atgItems.Items)
                    {
                        var cmd = new NdFcCmdReqAtgStatus(item.Number);
                        data += cmd;
                    }

                    var core = new NdFcCmdCore(_host, _id);

                    var resultSend = await core.SendCommandAsync(data, NdFcCmdSetType.Atg, ct);
                    if (resultSend.Item1.Code != NdFcResultCode.GL_OK)
                    {
                        return await Task.FromResult(resultSend.Item1);
                    }

                    data = resultSend.Item2;

                    var parser = new NdFcCmdParser();
                    var resultMessages = parser.Messages(data);
                    if (resultMessages.Item1.Code != NdFcResultCode.GL_OK)
                    {
                        return await Task.FromResult(resultMessages.Item1);
                    }

                    var messages = resultMessages.Item2;
                    foreach (var item in messages)
                    {
                        if (parser.Verify(item) == NdFcCmdType.Unknown)
                        {
                            return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE,
                                "[atg status list] unknown message"));
                        }
                    }

                    foreach (var item in messages)
                    {
                        if (parser.Verify(item) == NdFcCmdType.AtgState)
                        {
                            var resultCmd = parser.ToResAtgStatus(item);
                            if (resultCmd.Item1 != NdFcResultCode.GL_OK)
                            {
                                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE,
                                    "[atg status list] error parse message"));
                            }

                            var cmd = resultCmd.Item2;

                            var atg = _atgItems[cmd.Number];
                            if (atg != null)
                            {
                                var md5In = atg.ToString();

                                atg.State = cmd.State;
                                atg.Value = new NdFcAtgStatusStateValue
                                {
                                    ProductLevel = cmd.ProductLevel,
                                    WaterLevel = cmd.WaterLevel,
                                    Temperature = cmd.Temperature,
                                    ProductVolume = cmd.ProductVolume,
                                    WaterVolume = cmd.WaterVolume,
                                    FreeVolume = cmd.FreeVolume,
                                    VolumeAt15 = cmd.VolumeAt15,
                                    Density = cmd.Density,
                                    Weight = cmd.Weight
                                };
                                var md5Out = atg.ToString();
                                if (!isListValueChange)
                                    isListValueChange = !string.Equals(md5In, md5Out,
                                        StringComparison.CurrentCultureIgnoreCase);

                                _atgItems.Add(atg);
                            }
                        }
                    }
                }

                if (isListValueChange)
                {
                    OnAtgStatusChange?.Invoke(this, new NdFcLanAtgItemsEventArgs
                    {
                        // Items = _atgItems.Items
                        State = new NdFcAtgState
                        {
                            Items = _atgItems.Items,
                            Result = new NdFcResult()
                        }
                    });
                }

                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        /// <summary>
        /// Gets the pump status list.
        /// </summary>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        private async Task<NdFcResult> GetPumpStatusList(CancellationToken ct)
        {
            try
            {
                // NdFcPumpStatusStateValue
                var isListValueChange = false;

                if (_pumpItems.Count > 0)
                {
                    var data = string.Empty;

                    foreach (var item in _pumpItems.Items)
                    {
                        var cmd = new NdFcCmdReqPumpStatus(item.Number);
                        data += cmd;
                    }

                    var core = new NdFcCmdCore(_host, _id);

                    var resultSend = await core.SendCommandAsync(data, NdFcCmdSetType.Pump, ct);
                    if (resultSend.Item1.Code != NdFcResultCode.GL_OK)
                    {
                        OnPumpsStatusChange?.Invoke(this, new NdFcLanPumpItemsEventArgs
                        {
                            State = new NdFcPumpState {Items = null, Result = resultSend.Item1}
                        });

                        return await Task.FromResult(resultSend.Item1);
                    }

                    data = resultSend.Item2;
                    var parser = new NdFcCmdParser();

                    var resultMessages = parser.Messages(data);
                    if (resultMessages.Item1.Code != NdFcResultCode.GL_OK)
                    {
                        return await Task.FromResult(resultMessages.Item1);
                    }

                    var messages = resultMessages.Item2;
#if DEBUG
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Debug,
                            Message = $"[pump status]-> value: {string.Join(",", messages)}"
                        });
#endif
                    foreach (var item in messages)
                    {
                        if (parser.Verify(item) == NdFcCmdType.Unknown)
                        {
                            return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE,
                                "[pump status list] unknown message"));
                        }
                    }

                    // Console.WriteLine("----------------------");
                    foreach (var item in messages)
                    {
                        switch (parser.Verify(item))
                        {
                            case NdFcCmdType.PumpStateOffLine:
                            {
                                var resultCmd = parser.ToResPumpStatusOffLine(item);
                                if (resultCmd.Item1 != NdFcResultCode.GL_OK)
                                {
                                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE,
                                        "[pump status list] error parse [off line] message"));
                                }

                                var cmd = resultCmd.Item2;
                                var pump = _pumpItems[cmd.Number];

                                if (pump != null)
                                {
                                    var md5In = pump.ToString();

                                    pump.State = cmd.State;
                                    pump.Value = new NdFcPumpStatusStateValue
                                    {
                                        State = cmd.State,
                                        ErrorCode = cmd.ErrorCode,
                                        LockId = cmd.LockId
                                    };
                                    _pumpItems.Add(pump);

                                    var md5Out = pump.ToString();

                                    if (!string.Equals(md5In, md5Out, StringComparison.CurrentCultureIgnoreCase))
                                    {
                                        isListValueChange = true;

                                        OnPumpStatusChange?.Invoke(this, new NdFcLanPumpItemEventArgs {Item = pump});
                                    }
                                }

                                break;
                            }

                            case NdFcCmdType.PumpStateIdle:
                            {
                                var resultCmd = parser.ToResPumpStatusIdle(item);
                                if (resultCmd.Item1 != NdFcResultCode.GL_OK)
                                {
                                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE,
                                        "[pump status list] error parse [idle] message"));
                                }

                                var cmd = resultCmd.Item2;
                                var pump = _pumpItems[cmd.Number];

                                if (pump != null)
                                {
                                    var md5In = pump.ToString();
                                    pump.State = cmd.State;

                                    pump.Value = new NdFcPumpStatusStateValue
                                    {
                                        State = cmd.State,
                                        ErrorCode = cmd.ErrorCode,
                                        LockId = cmd.LockId,
                                        Nozzle = cmd.Nozzle
                                    };
                                    _pumpItems.Add(pump);

                                    var md5Out = pump.ToString();

                                    if (!string.Equals(md5In, md5Out, StringComparison.CurrentCultureIgnoreCase))
                                    {
                                        isListValueChange = true;

                                        OnPumpStatusChange?.Invoke(this, new NdFcLanPumpItemEventArgs {Item = pump});
                                    }
                                }

                                break;
                            }

                            case NdFcCmdType.PumpStateFill:
                            {
                                var resultCmd = parser.ToResPumpStatusFill(item);
                                if (resultCmd.Item1 != NdFcResultCode.GL_OK)
                                {
                                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE,
                                        "[pump status list] error parse [fill] message"));
                                }

                                var cmd = resultCmd.Item2;
                                var pump = _pumpItems[cmd.Number];

                                if (pump != null)
                                {
                                    var md5In = pump.ToString();

                                    pump.State = cmd.State;

                                    pump.Value = new NdFcPumpStatusStateValue
                                    {
                                        State = cmd.State,
                                        Transaction = cmd.Transaction,
                                        Nozzle = cmd.Nozzle,
                                        Liters = cmd.Liters,
                                        ErrorCode = cmd.ErrorCode,
                                        LockId = cmd.LockId,
                                    };

                                    var md5Out = pump.ToString();
                                    if (!string.Equals(md5In, md5Out, StringComparison.CurrentCultureIgnoreCase))
                                    {
                                        isListValueChange = true;

                                        OnPumpStatusChange?.Invoke(this, new NdFcLanPumpItemEventArgs {Item = pump});
                                    }

                                    _pumpItems.Add(pump);
                                }

                                break;
                            }


                            case NdFcCmdType.PumpStateBackup:
                            {
                                var resultCmd = parser.ToResPumpStatusBackup(item);
                                if (resultCmd.Item1 != NdFcResultCode.GL_OK)
                                {
                                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE,
                                        "[pump status list] error parse [backup] message"));
                                }

                                var cmd = resultCmd.Item2;
                                var pump = _pumpItems[cmd.Number];

                                if (pump != null)
                                {
                                    var md5In = pump.ToString();
                                    pump.State = cmd.State;

                                    pump.Value = new NdFcPumpStatusStateValue
                                    {
                                        State = cmd.State,
                                        Transaction = cmd.Transaction,
                                        Nozzle = cmd.Nozzle,
                                        Liters = cmd.Liters,
                                        Money = cmd.Money,
                                        ErrorCode = cmd.ErrorCode,
                                        LockId = cmd.LockId,
                                    };
                                    var md5Out = pump.ToString();
                                    if (!string.Equals(md5In, md5Out, StringComparison.CurrentCultureIgnoreCase))
                                    {
                                        isListValueChange = true;

                                        OnPumpStatusChange?.Invoke(this, new NdFcLanPumpItemEventArgs {Item = pump});
                                    }

                                    _pumpItems.Add(pump);
                                }

                                break;
                            }

                            case NdFcCmdType.PumpStateFillEnd:
                            {
                                var resultCmd = parser.ToResPumpStatusFillEnd(item);
                                if (resultCmd.Item1 != NdFcResultCode.GL_OK)
                                {
                                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE,
                                        "[pump status list] error parse [fill end] message"));
                                }

                                var cmd = resultCmd.Item2;
                                var pump = _pumpItems[cmd.Number];

                                if (pump != null)
                                {
                                    var md5In = pump.ToString();

                                    pump.State = cmd.State;

                                    pump.Value = new NdFcPumpStatusStateValue
                                    {
                                        State = cmd.State,
                                        Transaction = cmd.Transaction,
                                        Nozzle = cmd.Nozzle,
                                        Liters = cmd.Liters,
                                        Money = cmd.Money,
                                        Price = cmd.Price,
                                        ErrorCode = cmd.ErrorCode,
                                        LockId = cmd.LockId,
                                    };
                                    var md5Out = pump.ToString();
                                    if (!string.Equals(md5In, md5Out, StringComparison.CurrentCultureIgnoreCase))
                                    {
                                        isListValueChange = true;

                                        OnPumpStatusChange?.Invoke(this, new NdFcLanPumpItemEventArgs {Item = pump});
                                    }

                                    _pumpItems.Add(pump);
                                }

                                break;
                            }

                            case NdFcCmdType.PumpStateCounters:
                            {
                                var resultCmd = parser.ToResPumpStatusCounters(item);
                                if (resultCmd.Item1 != NdFcResultCode.GL_OK)
                                {
                                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE,
                                        "[pump status list] error parse [counters] message"));
                                }

                                var cmd = resultCmd.Item2;
                                var pump = _pumpItems[cmd.Number];

                                if (pump != null)
                                {
                                    var md5In = pump.ToString();
                                    pump.State = cmd.State;

                                    pump.Value = new NdFcPumpStatusStateValue
                                    {
                                        State = cmd.State,
                                        Nozzle = cmd.Nozzle,
                                        Liters = cmd.Liters,
                                        Money = cmd.Money,
                                        ErrorCode = cmd.ErrorCode,
                                    };
                                    var md5Out = pump.ToString();
                                    if (!string.Equals(md5In, md5Out, StringComparison.CurrentCultureIgnoreCase))
                                    {
                                        isListValueChange = true;

                                        OnPumpStatusChange?.Invoke(this, new NdFcLanPumpItemEventArgs {Item = pump});
                                    }

                                    _pumpItems.Add(pump);
                                }

                                break;
                            }

                            case NdFcCmdType.PumpStateLocked:
                            {
                                var resultCmd = parser.ToResPumpStatusLocked(item);
                                if (resultCmd.Item1 != NdFcResultCode.GL_OK)
                                {
                                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE,
                                        "[pump status list] error parse [locked] message"));
                                }

                                var cmd = resultCmd.Item2;
                                var pump = _pumpItems[cmd.Number];

                                if (pump != null)
                                {
                                    var md5In = pump.ToString();

                                    pump.State = cmd.State;

                                    pump.Value = new NdFcPumpStatusStateValue
                                    {
                                        State = cmd.State,
                                        ErrorCode = cmd.ErrorCode,
                                        LockId = cmd.LockId,
                                    };
                                    var md5Out = pump.ToString();
                                    if (!string.Equals(md5In, md5Out, StringComparison.CurrentCultureIgnoreCase))
                                    {
                                        isListValueChange = true;

                                        OnPumpStatusChange?.Invoke(this, new NdFcLanPumpItemEventArgs {Item = pump});
                                    }

                                    _pumpItems.Add(pump);
                                }

                                break;
                            }
                        }
                    }
                }

                if (isListValueChange || _pumpItemsResult.Code != NdFcResultCode.GL_OK)
                {
                    OnPumpsStatusChange?.Invoke(this, new NdFcLanPumpItemsEventArgs
                    {
                        // Items = _pumpItems.Items
                        State = new NdFcPumpState
                        {
                            Items = _pumpItems.Items,
                            Result = new NdFcResult()
                        }
                    });
                }

                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        /// <summary>
        /// Gets the atg configuration asynchronous.
        /// </summary>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        private async Task<NdFcResult> GetAtgConfigAsync(CancellationToken ct)
        {
            try
            {
                var cmd = new NdFcCmdReqAtgConfig();
                var core = new NdFcCmdCore(_host, _id);

                var result = await core.SendCommandAsync(cmd.ToString(), NdFcCmdSetType.Atg, ct);

                _atgItemsResult = result.Item1;

                if (result.Item1.Code != NdFcResultCode.GL_OK)
                {
                    return await Task.FromResult(result.Item1);
                }

                var parser = new NdFcCmdParser();

                var resultMessages = parser.Messages(result.Item2);
                if (resultMessages.Item1.Code != NdFcResultCode.GL_OK)
                {
                    return await Task.FromResult(resultMessages.Item1);
                }

                var messages = resultMessages.Item2;
                if (messages.Length != 1 || parser.Verify(messages[0]) != NdFcCmdType.AtgConfig)
                {
                    await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE, "bad command [atg config] format"));
                }

                var resultParse = parser.ToResAtgConfig(result.Item2);
                if (resultParse.Item1 != NdFcResultCode.GL_OK)
                {
                    await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE, "bad command [pump config] format"));
                }

                _atgItems.Clear();
                foreach (var item in resultParse.Item2.Items)
                {
                    _atgItems.Add(item);
                }

                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        /// <summary>
        /// Gets the pump configuration asynchronous.
        /// </summary>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        private async Task<NdFcResult> GetPumpConfigAsync(CancellationToken ct)
        {
            try
            {
                var cmd = new NdFcCmdReqPumpConfig();
                var core = new NdFcCmdCore(_host, _id);

                var result = await core.SendCommandAsync(cmd.ToString(), NdFcCmdSetType.Pump, ct);

                _pumpItemsResult = result.Item1;

                if (result.Item1.Code != NdFcResultCode.GL_OK)
                {
                    return await Task.FromResult(result.Item1);
                }

                var parser = new NdFcCmdParser();


                var resultMessages = parser.Messages(result.Item2);
                if (resultMessages.Item1.Code != NdFcResultCode.GL_OK)
                {
                    return await Task.FromResult(resultMessages.Item1);
                }

                var messages = resultMessages.Item2;
                if (messages.Length != 1 || parser.Verify(messages[0]) != NdFcCmdType.PumpConfig)
                {
                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE,
                        "bad command [pump config] format"));
                }

                var resultParse = parser.ToResPumpConfig(messages[0]);
                if (resultParse.Item1 != NdFcResultCode.GL_OK)
                {
                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PARSE,
                        "bad command [pump config] format"));
                }

                _pumpItems.Clear();
                foreach (var item in resultParse.Item2.Items)
                {
                    _pumpItems.Add(new NdFcPump
                    {
                        Number = item
                    });
                }

                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        #endregion

        #region Public-Properties

        /// <summary>
        /// Gets the pumps items.
        /// </summary>
        /// <value>The pump.</value>
        public NdFcPumpState Pump => new NdFcPumpState { Items = _pumpItems.Items, Result = _pumpItemsResult };

        /// <summary>
        /// Gets the atgs items.
        /// </summary>
        /// <value>The atg.</value>
        public NdFcAtgState Atg => new NdFcAtgState { Items = _atgItems.Items, Result = _atgItemsResult };

        /// <summary>
        /// Gets a value indicating whether this instance is atg.
        /// </summary>
        /// <value><c>true</c> if this instance is atg; otherwise, <c>false</c>.</value>
        public bool IsAtg { get; private set; }

        /// <summary>
        /// Gets a value indicating whether this instance is pump.
        /// </summary>
        /// <value><c>true</c> if this instance is pump; otherwise, <c>false</c>.</value>
        public bool IsPump { get; private set; }

        /// <summary>
        /// Gets the active.
        /// </summary>
        /// <value>The active.</value>
        public bool Active { get; private set; }

        /// <summary>
        /// Gets the identifier.
        /// </summary>
        /// <value>The identifier.</value>
        public int Id => _id;

        #endregion

        #region Public-Command-Methods

        /// <summary>
        /// Commands the pump counters asynchronous.
        /// </summary>
        /// <param name="pump">The pump.</param>
        /// <param name="nozzle">The nozzle.</param>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        public async Task<NdFcResult> CmdPumpCountersAsync(int pump, int nozzle, CancellationToken ct = default)
        {
            try
            {
                if (!IsPump)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = "[pump counters]-> pump service not allowed"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PUMP_NOT_ALLOWED,
                        "Pump service not allowed"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Error,
                        Message = $"[pump counters]-> pump: {pump} nozzle: {nozzle}"
                    });
#endif
                var cmd = new NdFcCmdReqPumpCounters(pump, nozzle);

                var core = new NdFcCmdCore(_host, _id);

                var result = await core.SendCommandAsync(cmd.ToString(), NdFcCmdSetType.Pump, ct);
                if (result.Item1.Code != NdFcResultCode.GL_OK)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = $"[pump counters]-> error {result.Item1.Message}"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_SEND_CMD, "Error send data"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[pump counters]-> result: GL_OK out: [{result.Item3}] in: [{result.Item2}]"
                    });
#endif
                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Error,
                        Message = $"[pump counters]-> error {e.Message}"
                    });

                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }


        /// <summary>
        /// Commands the pump suspend asynchronous.
        /// </summary>
        /// <param name="pump">The pump.</param>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        public async Task<NdFcResult> CmdPumpSuspendAsync(int pump, CancellationToken ct = default)
        {
            try
            {
                if (!IsPump)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = "[pump suspend]-> pump service not allowed"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PUMP_NOT_ALLOWED,
                        "Pump service not allowed"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[pump suspend]-> pump: {pump}"
                    });
#endif
                var cmd = new NdFcCmdReqPumpSuspend(pump);

                var core = new NdFcCmdCore(_host, _id);

                var result = await core.SendCommandAsync(cmd.ToString(), NdFcCmdSetType.Pump, ct);
                if (result.Item1.Code != NdFcResultCode.GL_OK)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = $"[pump suspend]-> error {result.Item1.Message}"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_SEND_CMD, "Error send data"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[pump suspend]-> result: GL_OK out: [{result.Item3}] in: [{result.Item2}]"
                    });
#endif
                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Error,
                        Message = $"[pump suspend]-> error {e.Message}"
                    });

                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        /// <summary>
        /// Commands the pump resume asynchronous.
        /// </summary>
        /// <param name="pump">The pump.</param>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        public async Task<NdFcResult> CmdPumpResumeAsync(int pump, CancellationToken ct = default)
        {
            try
            {
                if (!IsPump)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = "[pump resume]-> pump service not allowed"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PUMP_NOT_ALLOWED,
                        "Pump service not allowed"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[pump resume]-> pump: {pump}"
                    });
#endif
                var cmd = new NdFcCmdReqPumpResume(pump);

                var core = new NdFcCmdCore(_host, _id);

                var result = await core.SendCommandAsync(cmd.ToString(), NdFcCmdSetType.Pump, ct);
                if (result.Item1.Code != NdFcResultCode.GL_OK)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = $"[pump resume]-> error {result.Item1.Message}"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_SEND_CMD, "Error send data"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[pump resume]-> result: GL_OK out: [{result.Item3}] in: [{result.Item2}]"
                    });
#endif
                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Error,
                        Message = $"[pump resume]-> error {e.Message}"
                    });

                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        /// <summary>
        /// Commands the pump unlock asynchronous.
        /// </summary>
        /// <param name="pump">The pump.</param>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        public async Task<NdFcResult> CmdPumpUnlockAsync(int pump, CancellationToken ct = default)
        {
            try
            {
                if (!IsPump)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = "[pump unlock]-> pump service not allowed"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PUMP_NOT_ALLOWED,
                        "Pump service not allowed"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[pump unlock]-> pump: {pump}"
                    });
#endif

                var cmd = new NdFcCmdReqPumpUnlock(pump);

                var core = new NdFcCmdCore(_host, _id);

                var result = await core.SendCommandAsync(cmd.ToString(), NdFcCmdSetType.Pump, ct);
                if (result.Item1.Code != NdFcResultCode.GL_OK)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = $"[pump unlock]-> error {result.Item1.Message}"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_SEND_CMD, "Error send data"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[pump unlock]-> result: GL_OK out: [{result.Item3}] in: [{result.Item2}]"
                    });
#endif
                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Error,
                        Message = $"[pump unlock]-> error {e.Message}"
                    });

                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        /// <summary>
        /// Commands the pump backup asynchronous.
        /// </summary>
        /// <param name="pump">The pump.</param>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        public async Task<NdFcResult> CmdPumpBackupAsync(int pump, CancellationToken ct = default)
        {
            try
            {
                if (!IsPump)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = "[pump backup]-> pump service not allowed"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PUMP_NOT_ALLOWED,
                        "Pump service not allowed"));
                }

                var cmd = new NdFcCmdReqPumpBackup(pump);

                var core = new NdFcCmdCore(_host, _id);

                var result = await core.SendCommandAsync(cmd.ToString(), NdFcCmdSetType.Pump, ct);
                if (result.Item1.Code != NdFcResultCode.GL_OK)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = $"[pump backup]-> error {result.Item1.Message}"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_SEND_CMD, "Error send data"));
                }

                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Error,
                        Message = $"[pump backup]-> error {e.Message}"
                    });

                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        /// <summary>
        /// Commands the pump stop asynchronous.
        /// </summary>
        /// <param name="pump">The pump.</param>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        public async Task<NdFcResult> CmdPumpStopAsync(int pump, CancellationToken ct = default)
        {
            try
            {
                if (!IsPump)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = "[pump stop]-> pump service not allowed"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PUMP_NOT_ALLOWED,
                        "Pump service not allowed"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[pump stop]-> pump {pump}"
                    });
#endif
                var cmd = new NdFcCmdReqPumpStopFill(pump);

                var core = new NdFcCmdCore(_host, _id);

                var result = await core.SendCommandAsync(cmd.ToString(), NdFcCmdSetType.Pump, ct);
                if (result.Item1.Code != NdFcResultCode.GL_OK)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = $"[pump stop]-> error {result.Item1.Message}"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_SEND_CMD, "Error send data"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[pump stop]-> result: GL_OK out: [{result.Item3}] in: [{result.Item2}]"
                    });
#endif
                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Error,
                        Message = $"[pump stop]-> error {e.Message}"
                    });

                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        /// <summary>
        /// Commands the pump finalize fill asynchronous.
        /// </summary>
        /// <param name="pump">The pump.</param>
        /// <param name="transaction">The transaction.</param>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        public async Task<NdFcResult> CmdPumpFinalizeFillAsync(int pump, int transaction,
            CancellationToken ct = default)
        {
            try
            {
                if (!IsPump)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = "[stop pump fill]-> pump service not allowed"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PUMP_NOT_ALLOWED,
                        "Pump service not allowed"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[stop pump fill]-> pump: {pump} transaction: {transaction}"
                    });
#endif
                var cmd = new NdFcCmdReqPumpFinalizeFill(pump, transaction);

                var core = new NdFcCmdCore(_host, _id);

                var result = await core.SendCommandAsync(cmd.ToString(), NdFcCmdSetType.Pump, ct);
                if (result.Item1.Code != NdFcResultCode.GL_OK)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = $"[stop pump fill]-> error {result.Item1.Message}"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_SEND_CMD, "Error send data"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[stop pump fill]-> result: GL_OK out: [{result.Item3}] in: [{result.Item2}]"
                    });
#endif
                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Error,
                        Message = $"[start pump fill]-> error {e.Message}"
                    });

                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        /// <summary>
        /// Commands the pump start fill asynchronous.
        /// </summary>
        /// <param name="pump">The pump.</param>
        /// <param name="nozzle">The nozzle.</param>
        /// <param name="fillType">Type of the fill.</param>
        /// <param name="amount">The amount.</param>
        /// <param name="price">The price.</param>
        /// <param name="ct">The ct.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        public async Task<NdFcResult> CmdPumpStartFillAsync(int pump, int nozzle, NdFcFillType fillType, decimal amount,
            decimal price, CancellationToken ct = default)
        {
            try
            {
                if (!IsPump)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = "[start pump fill]-> pump service not allowed"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_PUMP_NOT_ALLOWED,
                        "Pump service not allowed"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[start pump fill]-> pump: {pump} nozzle: {nozzle} fillType: {fillType} amount: {amount:##.00} price: {price:##.00}"
                    });
#endif
                var cmd = new NdFcCmdReqPumpStartFill(pump, nozzle, fillType, amount, price);

                var core = new NdFcCmdCore(_host, _id);

                var result = await core.SendCommandAsync(cmd.ToString(), NdFcCmdSetType.Pump, ct);
                if (result.Item1.Code != NdFcResultCode.GL_OK)
                {
                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Error,
                            Message = $"[start pump fill]-> error {result.Item1.Message}"
                        });

                    return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_SEND_CMD, "Error send data"));
                }
#if DEBUG
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Debug,
                        Message = $"[start pump fill]-> result: GL_OK out: [{result.Item3}] in: [{result.Item2}]"
                    });
#endif
                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Error,
                        Message = $"[start pump fill]-> error {e.Message}"
                    });

                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        #endregion

        #region Public-Methods

        /// <summary>
        /// Starts the asynchronous.
        /// </summary>
        /// <param name="id">The identifier.</param>
        /// <param name="options">The options.</param>
        /// <param name="host">The host.</param>
        /// <param name="port">The port.</param>
        /// <param name="pumpStateInterval">The pump state interval, seconds.</param>
        /// <param name="atgStateInterval">The atg state interval, seconds.</param>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        public async Task<NdFcResult> StartAsync(int id, NdFcOptionsType options, string host, int port = 51000,
            int pumpStateInterval = 1, int atgStateInterval = 5)
        {
            try
            {
                if (!Regex.IsMatch(host, @"\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}"))
                {
                    return new NdFcResult(NdFcResultCode.GL_BAD_PARAMETER, $"Parameter [{nameof(host)}] is bad");
                }

                if (port < IPEndPoint.MinPort || port > IPEndPoint.MaxPort)
                {
                    return new NdFcResult(NdFcResultCode.GL_BAD_PARAMETER, $"Parameter [{nameof(port)}] is bad");
                }

                if (pumpStateInterval < 1 || pumpStateInterval > 30)
                {
                    throw new ArgumentOutOfRangeException(nameof(pumpStateInterval));
                }

                if (atgStateInterval < 1 || atgStateInterval > 30)
                {
                    throw new ArgumentOutOfRangeException(nameof(atgStateInterval));
                }

                if (id < 1 || id > 100)
                {
                    throw new ArgumentOutOfRangeException(nameof(id));
                }

                _pumpStateInterval = pumpStateInterval;
                _atgStateInterval = atgStateInterval;


                _cts?.Dispose();
                _cts = new CancellationTokenSource();
                _host = new IPEndPoint(IPAddress.Parse(host), port);
                _id = id;

                IsPump = options.HasFlag(NdFcOptionsType.Pump);
                IsAtg = options.HasFlag(NdFcOptionsType.Atg);

                if (IsPump)
                {
                    var result = await GetPumpConfigAsync(_cts.Token);
                    if (result.Code != NdFcResultCode.GL_OK)
                    {
                        throw new Exception($"get pumps config: {result.Message}");
                    }

                    _tasks.Add(ExecutePumpsStateAsync(_cts.Token));

                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Info,
                            Message = $"[start]-> pump state task start"
                        });
                }

                if (IsAtg)
                {
                    var result = await GetAtgConfigAsync(_cts.Token);
                    if (result.Code != NdFcResultCode.GL_OK)
                    {
                        throw new Exception($"get atg config: {result.Message}");
                    }

                    _tasks.Add(ExecuteAtgStateAsync(_cts.Token));

                    OnMessage?.Invoke(this,
                        new NdFcLanMessageEventArgs
                        {
                            Type = NdFcMessageType.Info,
                            Message = $"[start]-> atg state task start"
                        });
                }

                Active = true;

                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Error,
                        Message = $"[start]-> error {e.Message}"
                    });

                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        /// <summary>
        /// Stops the asynchronous.
        /// </summary>
        /// <returns>System.Threading.Tasks.Task&lt;ND.NDFC.lan.NdFcResult&gt;.</returns>
        public async Task<NdFcResult> StopAsync()
        {
            try
            {
                _cts.Cancel();

                await Task.WhenAny(_tasks.ToArray());

                Active = false;

                return await Task.FromResult(new NdFcResult());
            }
            catch (Exception e)
            {
                OnMessage?.Invoke(this,
                    new NdFcLanMessageEventArgs
                    {
                        Type = NdFcMessageType.Error,
                        Message = $"[start]-> error {e.Message}"
                    });

                return await Task.FromResult(new NdFcResult(NdFcResultCode.GL_ERROR, e.Message));
            }
        }

        #endregion

        #region Public-Events

        // https://www.codeproject.com/Articles/886223/Csharp-Multithreading-and-Events

        /// <summary>
        /// Occurs when [on message].
        /// </summary>
        public event EventHandler<NdFcLanMessageEventArgs> OnMessage;

        /// <summary>
        /// Occurs when [on pumps status change].
        /// </summary>
        public event EventHandler<NdFcLanPumpItemsEventArgs> OnPumpsStatusChange;

        /// <summary>
        /// Occurs when [on pump status change].
        /// </summary>
        public event EventHandler<NdFcLanPumpItemEventArgs> OnPumpStatusChange;

        /// <summary>
        /// Occurs when [on atg status change].
        /// </summary>
        public event EventHandler<NdFcLanAtgItemsEventArgs> OnAtgStatusChange;

        #endregion

        #region Dispose

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        private bool disposed = false;

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        /// <summary>
        /// Disposes the specified disposing.
        /// </summary>
        /// <param name="disposing">The disposing.</param>
        protected virtual void Dispose(bool disposing)
        {
            if (!disposed)
            {
                if (disposing)
                {
                    try
                    {
                        StopAsync().Wait();
                    }
                    catch (Exception e)
                    {
                        OnMessage?.Invoke(this,
                            new NdFcLanMessageEventArgs
                            { Type = NdFcMessageType.Error, Message = $"[stop] error {e.Message}" });
                    }
                }

                disposed = true;
            }
        }

        ~NdFcLan()
        {
            Dispose(false);
        }

        #endregion
    }
}