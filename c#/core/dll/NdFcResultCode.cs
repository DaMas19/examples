
namespace ND.NDFC.lan
{
    public enum NdFcResultCode
    {
        // Global errors
        // 0x00 FF FF FF
        /// <summary>
        /// The ok
        /// </summary>
        GL_OK = 0x00_00_00_00,

        /// <summary>
        /// The global error
        /// </summary>
        GL_ERROR = 0x00_00_00_01,

        /// <summary>
        /// The unknown error
        /// </summary>
        GL_UNKNOWN = 0x00_00_00_02,

        /// <summary>
        /// The bad parameter error
        /// </summary>
        GL_BAD_PARAMETER = 0x00_00_00_03,

        /// <summary>
        /// The cancel error
        /// </summary>
        GL_CANCEL = 0x00_00_00_04,

        /// <summary>
        /// The parse error
        /// </summary>
        GL_PARSE = 0x00_00_00_05,

        /// <summary>
        /// The send command error
        /// </summary>
        GL_SEND_CMD = 0x00_00_00_06,

        /// <summary>
        /// The pump not allowed error
        /// </summary>
        GL_PUMP_NOT_ALLOWED = 0x00_00_00_07,

        // 0x01 FF FF FF
        /// <summary>
        /// The TCP error
        /// </summary>
        TCP_ERROR = 0x01_00_00_00,

        /// <summary>
        /// The TCP disconnected (obj disposed exception)
        /// </summary>
        TCP_DISPOSED = 0x01_00_00_01,

        /// <summary>
        /// The TCP disconnected (socket exception)
        /// </summary>
        TCP_SOCKED = 0x01_00_00_02,

        /// <summary>
        /// The TCP disconnected (invalid operation exception)
        /// </summary>
        TCP_INVALID_OPERATION = 0x01_00_00_03,

        /// <summary>
        /// The TCP disconnected (IO exception)
        /// </summary>
        TCP_IO = 0x01_00_00_04,

        // connect timeout
        /// <summary>
        /// The TCP connect timeout
        /// </summary>
        TCP_CONNECT_TIMEOUT = 0x01_00_00_05,

        /// <summary>
        /// The TCP not connected
        /// </summary>
        TCP_NOT_CONNECTED = 0x01_00_00_06,

        /// <summary>
        /// The TCP disconnected while attaching to stream
        /// </summary>
        TCP_ATTACH_TO_STREAM = 0x01_00_00_07,

        /// <summary>
        /// The TCP can not read from stream
        /// </summary>
        TCP_NOT_READ = 0x01_00_00_08,

        /// <summary>
        /// The TCP start read timeout
        /// </summary>
        TCP_START_READ_TIMEOUT = 0x01_00_00_09,

        /// <summary>
        /// The TCP read timeout
        /// </summary>
        TCP_READ_TIMEOUT = 0x01_00_00_0A,
    }
}