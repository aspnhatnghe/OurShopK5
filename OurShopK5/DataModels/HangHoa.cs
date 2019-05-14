using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace OurShopK5.DataModels
{
    [Table("HangHoa")]
    public class HangHoa
    {
        [Key]
        public int MaHh { get; set; }
        public string TenHh { get; set; }
        public string Hinh { get; set; }
        public string MoTa { get; set; }
        public double DonGia { get; set; }
        public byte GiamGia { get; set; }
        public int MaLoai { get; set; }
        [ForeignKey("MaLoai")]
        public Loai Loai { get; set; }
    }

    public class QuaTang
    {
        public int QuaTangId { get; set; }
        public string TenQua { get; set; }
        public string MoTa { get; set; }        
        public string Code { get; set; }
        public DateTime HanDung { get; set; }
    }

    public class NhanQua
    {
        public int Id { get; set; }
        public int MaQT { get; set; }
        public int MaHh { get; set; }
        public string MaKh { get; set; }
        public DateTime? NgayNhan { get; set; }
        [ForeignKey("MaQT")]
        public QuaTang QuaTang { get; set; }
        [ForeignKey("MaHh")]
        public HangHoa HangHoa { get; set; }
    }
}
