using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using OurShopK5.DataModels;
using OurShopK5.Models;

namespace OurShopK5.Areas.Admin.Controllers
{
    [Area("Admin")]    
    public class ThongKeController : Controller
    {
        private readonly MyDbContext _context;

        public ThongKeController(MyDbContext context)
        {
            _context = context;

            //var claims = new List<Claim> {
            //    new Claim(ClaimTypes.Name, "Tèo"),
            //    new Claim(ClaimTypes.Role, VaiTro.Admin.ToString())
            //};
        }

        [Authorize(Roles = "Admin,BanHang,Kho")]
        public IActionResult Index()
        {
            return View();
        }

        [Authorize(Roles = "Admin,BanHang")]
        public IActionResult DoanhSoBanHang()
        {
            //thống kê theo loại 
            var data = _context.ChiTietDonHangs
                    .GroupBy(p => new
                    {
                        p.HangHoa.Loai,
                        p.DonHang.NgayDatHang.Month,
                        p.DonHang.NgayDatHang.Year
                    })
                    .Select(p => new DoanhSoBanHangTheoLoai {
                        TenLoai = p.Key.Loai.TenLoai,
                        ThangNam = $"{p.Key.Month}/{p.Key.Year}",
                        DoanhSo = p.Sum(ct => ct.ThanhTien)
                    });

            //return Json(data);
            return View(data);
        }
    }
}