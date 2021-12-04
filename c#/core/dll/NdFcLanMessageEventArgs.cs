using System;

namespace ND.NDFC.lan
{
    /// <summary>
    /// Class NdFcLanMessageEventArgs.
    /// </summary>
    /// <seealso cref="System.EventArgs" />
    public class NdFcLanMessageEventArgs : EventArgs
    {
        /// <summary>
        /// Gets or sets the type.
        /// </summary>
        /// <value>The type.</value>
        public NdFcMessageType Type { get; set; } = NdFcMessageType.Debug;

        /// <summary>
        /// Gets or sets the message.
        /// </summary>
        /// <value>The message.</value>
        public string Message { get; set; }
    }
}