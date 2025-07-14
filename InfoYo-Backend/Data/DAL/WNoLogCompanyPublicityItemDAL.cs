using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WNoLogCompanyPublicityItemDAL
    {
        public static List<WNoLogCompanyPublicityItemVMR> ReadAll()
        {
            List<WNoLogCompanyPublicityItemVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogCompanyPublicityItem>().Select(x => new WNoLogCompanyPublicityItemVMR
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

        public static WNoLogCompanyPublicityItemVMR ReadOne(long Id)
        {
            WNoLogCompanyPublicityItemVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogCompanyPublicityItem>().Where(x => x.Id == Id).Select(x => new WNoLogCompanyPublicityItemVMR
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
