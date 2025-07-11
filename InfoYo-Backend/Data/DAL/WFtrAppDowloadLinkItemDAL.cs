using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WFtrAppDowloadLinkItemDAL
    {
        public static List<WFtrAppDowloadLinkItemVMR> ReadAll(long Id)
        {
            List<WFtrAppDowloadLinkItemVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrAppDowloadLinkItem>().Where(x => x.Id == Id).Select(x => new WFtrAppDowloadLinkItemVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    TitleHoverDesc = x.TitleHoverDesc,
                    ItemBgImgPath = x.ItemBgImgPath,
                    ItemUrl = x.ItemUrl
                }).ToList();
            }

            return result;
        }

        public static WFtrAppDowloadLinkItemVMR ReadOne(long Id)
        {
            WFtrAppDowloadLinkItemVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrAppDowloadLinkItem>().Where(x => x.Id == Id).Select(x => new WFtrAppDowloadLinkItemVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    TitleHoverDesc = x.TitleHoverDesc,
                    ItemBgImgPath = x.ItemBgImgPath,
                    ItemUrl = x.ItemUrl
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
