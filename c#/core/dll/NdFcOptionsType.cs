using System;

namespace ND.NDFC.lan
{
    /// <summary>
    /// Enum NdFcOptionsType
    /// </summary>
    [Flags]
    public enum NdFcOptionsType
    {
        /// <summary>
        /// The none
        /// </summary>
        None = 0,
        /// <summary>
        /// The pump
        /// </summary>
        Pump = 1,
        /// <summary>
        /// The atg
        /// </summary>
        Atg = 2
    }
}
