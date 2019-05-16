using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace OurShopK5.Models
{
    public class MyTool
    {
        public static string XuLyUpload(IFormFile fHinh, string thuMuc)
        {
            string fileName = "";
            if (fHinh != null)
            {
                string fullPath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "Hinh", thuMuc, fHinh.FileName);
                using (var file = new FileStream(fullPath, FileMode.Create))
                {
                    fHinh.CopyTo(file);
                    fileName = fHinh.FileName;
                }
            }

            return fileName;
        }
    }
}
