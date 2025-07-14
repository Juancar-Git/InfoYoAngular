using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WNoLogCompanyItemDAL
    {
        public static List<WNoLogCompanyItemVMR> ReadAll()
        {
            List<WNoLogCompanyItemVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogCompanyItem>().Select(x => new WNoLogCompanyItemVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    Description = x.Description,
                    ItemBgImgPath = x.ItemBgImgPath,
                    ItemBtn = x.ItemBtn,
                    ItemBtnUrl = x.ItemBtnUrl
                }).ToList();
            }

            return result;
        }

        public static WNoLogCompanyItemVMR ReadOne(long Id)
        {
            WNoLogCompanyItemVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogCompanyItem>().Where(x => x.Id == Id).Select(x => new WNoLogCompanyItemVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    Description = x.Description,
                    ItemBgImgPath = x.ItemBgImgPath,
                    ItemBtn = x.ItemBtn,
                    ItemBtnUrl = x.ItemBtnUrl
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
