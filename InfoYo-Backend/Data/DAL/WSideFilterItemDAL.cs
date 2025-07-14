using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WSideFilterItemDAL
    {
        public static List<WSideFilterItemVMR> ReadAll()
        {
            List<WSideFilterItemVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WSideFilterItem>().Select(x => new WSideFilterItemVMR
                {
                    Id = x.Id,
                    ItemValue = x.ItemValue,
                    ItemLabel = x.ItemLabel,
                    WSideFilterTypeId = x.WSideFilterTypeId
                }).ToList();
            }

            return result;
        }

        public static WSideFilterItemVMR ReadOne(long Id)
        {
            WSideFilterItemVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WSideFilterItem>().Where(x => x.Id == Id).Select(x => new WSideFilterItemVMR
                {
                    Id = x.Id,
                    ItemValue = x.ItemValue,
                    ItemLabel = x.ItemLabel,
                    WSideFilterTypeId = x.WSideFilterTypeId
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
