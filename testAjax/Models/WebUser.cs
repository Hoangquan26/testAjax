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
    
    public partial class WebUser
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public WebUser()
        {
            this.PhanQuyens = new HashSet<PhanQuyen>();
        }
    
        public int id { get; set; }
        public string UserName { get; set; }
        public string PassWord { get; set; }
        public string gmail { get; set; }
        public Nullable<System.DateTime> ngayTaoTaiKhoan { get; set; }
        public string avatarPath { get; set; }
        public Nullable<bool> isAdmin { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhanQuyen> PhanQuyens { get; set; }
    }
}
