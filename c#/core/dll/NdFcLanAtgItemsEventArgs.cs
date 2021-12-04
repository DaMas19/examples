using System;
using ND.NDFC.lan.Items;

namespace ND.NDFC.lan
{
    public class NdFcLanAtgItemsEventArgs : EventArgs
    {
        /// <summary>
        /// Gets or sets the items.
        /// </summary>
        /// <value>The items.</value>
        public  NdFcAtgState State { get; set; }
    }
}
