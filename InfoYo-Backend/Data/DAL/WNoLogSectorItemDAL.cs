using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WNoLogSectorItemDAL
    {
        public static List<WNoLogSectorItemVMR> ReadAll()
        {
            List<WNoLogSectorItemVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogSectorItem>().Select(x => new WNoLogSectorItemVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    ItemBgImgPath = x.ItemBgImgPath,
                    FilterName = x.FilterName,
                    FilterValue = x.FilterValue
                }).ToList();
            }

            return result;
        }

        public static WNoLogSectorItemVMR ReadOne(long id)
        {
            WNoLogSectorItemVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogSectorItem>().Where(x => x.Id == id).Select(x => new WNoLogSectorItemVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    ItemBgImgPath = x.ItemBgImgPath,
                    FilterName = x.FilterName,
                    FilterValue = x.FilterValue
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
