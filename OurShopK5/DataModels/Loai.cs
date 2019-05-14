using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace OurShopK5.DataModels
{
    [Table("Loai")]
    public class Loai
    {
        [Key]
        [Display(Name ="Mã loại")]
        public int MaLoai { get; set; }
        [Display(Name = "Tên loại")]
        public string TenLoai { get; set; }
        [Display(Name = "Mô tả")]
        public string MoTa { get; set; }
        [Display(Name = "Hình")]
        public string Hinh { get; set; }

        public int MaLoaiCha { get; set; }
    }
}
