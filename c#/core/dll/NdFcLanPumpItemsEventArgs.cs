using System;
using ND.NDFC.lan.Items;

namespace ND.NDFC.lan
{
    /// <summary>
    /// Class NdFcLanPumpItemsEventArgs.
    /// </summary>
    /// <seealso cref="System.EventArgs" />
    public class NdFcLanPumpItemsEventArgs : EventArgs
    {
        /// <summary>
        /// Gets or sets the items.
        /// </summary>
        /// <value>The items.</value>
        public NdFcPumpState State { get; set; }
    }
}