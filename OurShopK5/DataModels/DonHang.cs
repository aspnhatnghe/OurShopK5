﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace OurShopK5.DataModels
{
    [Table("DonHang")]
    public class DonHang
    {
        public int Id { get; set; }
        [Display(Name ="Ngày đặt hàng")]
        public DateTime NgayDatHang { get; set; }
        [Display(Name = "Trạng thái")]        
        public TrangThaiDonHang TrangThaiDonHang { get; set; }
        [Display(Name ="Tổng tiền")]
        public double TongTien { get; set; }
        [Display(Name ="Khách hàng")]
        [MaxLength(20, ErrorMessage = "Tối đa 20 kí tự")]
        public string MaKh { get; set; }        
        [ForeignKey("MaKh")]
        public KhachHang KhachHang { get; set; }
        [Display(Name ="Người nhận hàng")]
        public string NguoiNhan { get; set; }
        [Display(Name ="Địa chỉ giao hàng")]
        public string DiaChiGiaoHang { get; set; }
    }
    public enum TrangThaiDonHang
    {
        [Description("Mới đặt hàng")]
        MoiDangHang = 0,
        [Description("Đã thanh toán")]
        DaThanhToan = 1,
        [Description("Đơn hàng hoàn tất")]
        HoanTatDonHang = 2,
        [Description("Hủy đơn hàng")]
        HuyDonHang = 3
    }
}
