object DM: TDM
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 611
  Top = 342
  Height = 304
  Width = 371
  object IdTCPSrvr: TIdTCPServer
    OnStatus = IdTCPSrvrStatus
    Bindings = <>
    DefaultPort = 8800
    ListenQueue = 50
    MaxConnections = 20
    OnConnect = IdTCPSrvrConnect
    OnDisconnect = IdTCPSrvrDisconnect
    OnException = IdTCPSrvrException
    Scheduler = IdShedulerOfThreadIP
    OnExecute = IdTCPSrvrExecute
    Left = 40
    Top = 32
  end
  object IdShedulerOfThreadIP: TIdSchedulerOfThreadDefault
    MaxThreads = 100
    Left = 144
    Top = 32
  end
  object IdCmdTCPSrv: TIdCmdTCPServer
    Bindings = <>
    DefaultPort = 0
    Intercept = IdServerCompression
    MaxConnections = 3
    OnConnect = IdCmdTCPSrvConnect
    OnDisconnect = IdCmdTCPSrvDisconnect
    Scheduler = IdShedulerOfThreadCMD
    CommandHandlers = <
      item
        CmdDelimiter = ' '
        Command = 'FILELOG'
        Disconnect = False
        Name = 'TIdCommandHandler_INFO'
        NormalReply.Code = '200'
        NormalReply.Text.Strings = (
          'OK')
        ParamDelimiter = ' '
        ParseParams = True
        Tag = 0
        OnCommand = IdCmdTCPSrvCommandHandlers0Command
      end
      item
        CmdDelimiter = ' '
        Command = 'FILELOGLIST'
        Disconnect = False
        Name = 'TIdCommandHandler1'
        NormalReply.Code = '200'
        NormalReply.Text.Strings = (
          'OK')
        ParamDelimiter = ' '
        ParseParams = False
        Tag = 0
        OnCommand = IdCmdTCPSrvCommandHandlers1Command
      end>
    ExceptionReply.Code = '500'
    ExceptionReply.Text.Strings = (
      'Unknown Internal Error')
    Greeting.Code = '200'
    Greeting.Text.Strings = (
      'Welcome')
    HelpReply.Code = '100'
    HelpReply.Text.Strings = (
      'Help follows')
    MaxConnectionReply.Code = '300'
    MaxConnectionReply.Text.Strings = (
      'Too many connections. Try again later.')
    ReplyTexts = <>
    ReplyUnknownCommand.Code = '400'
    ReplyUnknownCommand.Text.Strings = (
      'Unknown Command')
    Left = 40
    Top = 104
  end
  object IdShedulerOfThreadCMD: TIdSchedulerOfThreadDefault
    MaxThreads = 100
    Left = 144
    Top = 104
  end
  object IdSASLKey: TIdSASLSKey
    UserPassProvider = IdUserPassProvider
    Left = 40
    Top = 184
  end
  object IdUserPassProvider: TIdUserPassProvider
    Username = 'username'
    Password = 'password'
    Left = 232
    Top = 184
  end
  object IdServerCompression: TIdServerCompressionIntercept
    CompressionLevel = 6
    Left = 128
    Top = 184
  end
end
