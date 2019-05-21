using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using OurShopK5.DataModels;
using OurShopK5.Models;
using AutoMapper;
using Microsoft.EntityFrameworkCore;

namespace OurShopK5.Controllers
{
    public class HangHoaController : Controller
    {
        private readonly MyDbContext ctx;
        private readonly IMapper mapper;
        public HangHoaController(MyDbContext db, IMapper _map)
        {
            ctx = db; mapper = _map;
        }

        [Route("{loai}/{hanghoa}")]
        public IActionResult Detail(string loai, string hanghoa)
        {
            var hh = ctx.HangHoas.SingleOrDefault(p => p.TenKhongDau == hanghoa);
            if(hh == null)
            {
                return RedirectToAction("Index");
            }
            return View(hh);
        }
        public IActionResult Index(int? loai)
        {
            var dsHangHoa = ctx.HangHoas
                .Include(prop => prop.Loai)
                .AsQueryable();

            if(loai.HasValue)
            {
                dsHangHoa = dsHangHoa.Where(p => p.MaLoai == loai.Value).AsQueryable();
            }

            var data = new List<HangHoaView>();
            HangHoaView hhvTemp = null;
            foreach(var hh in dsHangHoa.ToList())
            {
                hhvTemp = mapper.Map<HangHoaView>(hh);
                hhvTemp.Loai = hh.Loai.TenLoai;
                data.Add(hhvTemp);
            }

            return View(data);
        }
    }
}