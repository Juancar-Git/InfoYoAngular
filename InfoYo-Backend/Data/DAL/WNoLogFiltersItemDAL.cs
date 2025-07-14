using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WNoLogFiltersItemDAL
    {
        public static List<WNoLogFiltersItemVMR> ReadAll()
        {
            List<WNoLogFiltersItemVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogFiltersItem>().Select(x => new WNoLogFiltersItemVMR
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

        public static WNoLogFiltersItemVMR ReadOne(long Id)
        {
            WNoLogFiltersItemVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogFiltersItem>().Where(x => x.Id == Id).Select(x => new WNoLogFiltersItemVMR
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
