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
    
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            this.ChiTietDonHangs = new HashSet<ChiTietDonHang>();
            this.SanPham_YeuThich = new HashSet<SanPham_YeuThich>();
        }
    
        public string maSanPham { get; set; }
        public string tenSanPham { get; set; }
        public string moTaSanPham { get; set; }
        public Nullable<int> giaSanPham { get; set; }
        public Nullable<int> soLuongSanPham { get; set; }
        public Nullable<int> theLoaiSanPham { get; set; }
        public string hinhAnhSanPham { get; set; }
        public Nullable<int> maHangSanXuat { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDonHang> ChiTietDonHangs { get; set; }
        public virtual LoaiSanPham LoaiSanPham { get; set; }
        public virtual HangSanXuat HangSanXuat { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SanPham_YeuThich> SanPham_YeuThich { get; set; }
    }
}
