using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WNoLogCitiesItemDAL
    {
        public static List<WNoLogCitiesItemVMR> ReadAll()
        {
            List<WNoLogCitiesItemVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogCitiesItem>().Select(x => new WNoLogCitiesItemVMR
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
    }
}
