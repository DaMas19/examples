using System;
using ND.NDFC.lan.Items;

namespace ND.NDFC.lan
{
    /// <summary>
    /// Class NdFcLanPumpItemEventArgs.
    /// </summary>
    /// <seealso cref="System.EventArgs" />
    public class NdFcLanPumpItemEventArgs : EventArgs
    {
        /// <summary>
        /// Gets or sets the item.
        /// </summary>
        /// <value>The item.</value>
        public NdFcPump Item { get; set; }
    }
}