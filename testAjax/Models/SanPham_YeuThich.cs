//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace testAjax.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SanPham_YeuThich
    {
        public int ID { get; set; }
        public Nullable<int> User_ID { get; set; }
        public string SanPham_ID { get; set; }
        public Nullable<System.DateTime> Time { get; set; }
    
        public virtual SanPham SanPham { get; set; }
        public virtual WebUser WebUser { get; set; }
    }
}
