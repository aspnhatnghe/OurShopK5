﻿using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace OurShopK5.Models
{
    public class MyTool
    {

        public static string GetEnumDescription(Enum value)
        {
            FieldInfo fi = value.GetType().GetField(value.ToString());

            DescriptionAttribute[] attributes =
                (DescriptionAttribute[])fi.GetCustomAttributes(
                typeof(DescriptionAttribute),
                false);

            if (attributes != null &&
                attributes.Length > 0)
                return attributes[0].Description;
            else
                return value.ToString();
        }

        public static int PAGE_SIZE = 3;
        private static string[] VietNamChar = new string[]
       {
           "aAeEoOuUiIdDyY-",
           "áàạảãâấầậẩẫăắằặẳẵ",
           "ÁÀẠẢÃÂẤẦẬẨẪĂẮẰẶẲẴ",
           "éèẹẻẽêếềệểễ",
           "ÉÈẸẺẼÊẾỀỆỂỄ",
           "óòọỏõôốồộổỗơớờợởỡ",
           "ÓÒỌỎÕÔỐỒỘỔỖƠỚỜỢỞỠ",
           "úùụủũưứừựửữ",
           "ÚÙỤỦŨƯỨỪỰỬỮ",
           "íìịỉĩ",
           "ÍÌỊỈĨ",
           "đ",
           "Đ",
           "ýỳỵỷỹ",
           "ÝỲỴỶỸ",
           " "
       };
        public static string ReplaceUnicode(string strInput)
        {
            for (int i = 1; i < VietNamChar.Length; i++)
            {
                for (int j = 0; j < VietNamChar[i].Length; j++)
                {
                    strInput = strInput.Replace(VietNamChar[i][j], VietNamChar[0][i - 1]);
                }
            }
            return strInput;
        }
        public static string ConvertUrlFriendly(string name)
        {
            string result = ReplaceUnicode(name).ToLower().Trim();
            //\s: khoảng trắng
            result = Regex.Replace(result, @"[^a-z0-9\s-]", "");
            result = Regex.Replace(result, @"\s+", "-");
            result = Regex.Replace(result, @"\s", "-");
            
            return result;
        }

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
