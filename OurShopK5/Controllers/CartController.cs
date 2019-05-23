using Microsoft.AspNetCore.Mvc;
using OurShopK5.DataModels;
using OurShopK5.Models;
using System.Collections.Generic;
using System.Linq;

namespace OurShopK5.Controllers
{
    public class CartController : Controller
    {
        private readonly MyDbContext ctx;
        public CartController(MyDbContext db)
        {
            ctx = db;
        }
        public IActionResult Index()
        {
            return View(Cart);
        }

        public List<CartItem> Cart
        {
            get
            {

                List<CartItem> gioHang = HttpContext.Session.Get<List<CartItem>>("GioHang");
                if (gioHang == null)
                    gioHang = new List<CartItem>();
                return gioHang;
            }
        }

        public IActionResult AddToCart(int id)
        {
            //kiếm trong session đã có hàng hóa có mã id?
            List<CartItem> gioHang = Cart;

            //xử lý
            CartItem item = gioHang.SingleOrDefault(p => p.HangMua.MaHh == id);
            if (item != null)//đã có
            {
                item.SoLuong++;
            }
            else
            {
                //dựa vào id vào CSDL đọc lấy hàng hóa ra
                HangHoa hh = ctx.HangHoas.SingleOrDefault(p => p.MaHh == id);
                item = new CartItem
                {
                    HangMua = hh,
                    SoLuong = 1
                };

                gioHang.Add(item);
            }
            //lưu session
            HttpContext.Session.Set("GioHang", gioHang);

            //chuyển trang giỏ hàng
            return RedirectToAction("Index");

            ////trả về Json
            //return Json(new
            //{
            //    TongSoLuong = gioHang.Sum(p => p.SoLuong),
            //    TongTien = gioHang.Sum(p => p.ThanhTien)
            //});
        }

        public IActionResult Checkout(KhachHangView model)
        {
            //chưa đăng nhập --> tạo mới khách hàng

            //tạo đơn hàng

            //tạo chi tiết đơn hàng

            //xóa session

            //gửi mail thông tin đơn hàng cho khách hàng

            return RedirectToAction("Index", "HangHoa");
        }
    }
}