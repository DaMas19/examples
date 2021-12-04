using System;

namespace ND.NDFC.lan
{
    /// <summary>
    /// Struct NdFcResult
    /// </summary>
    public struct NdFcResult
    {
        /// <summary>
        /// The code
        /// </summary>
        public NdFcResultCode Code;

        /// <summary>
        /// The message
        /// </summary>
        public string Message;

        /// <summary>
        /// Initializes a new instance of the <see cref="NdFcResult"/> struct.
        /// </summary>
        /// <param name="code">The code.</param>
        /// <param name="message">The message.</param>
        public NdFcResult(NdFcResultCode code = NdFcResultCode.GL_OK, string message = "")
        {
            Code = code;
            Message = message ?? String.Empty;
        }
    }
}