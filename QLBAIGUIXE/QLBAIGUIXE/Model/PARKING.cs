//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QLBAIGUIXE.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class PARKING
    {
        public int id { get; set; }
        public int Type { get; set; }
        public int IdINFOCAR { get; set; }

        
    
        public virtual INFOCAR INFOCAR { get; set; }
        public virtual INFOPARKING INFOPARKING { get; set; }
    }
}
