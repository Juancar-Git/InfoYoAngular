using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WSideFilterTypeDAL
    {
        public static List<WSideFilterTypeVMR> ReadAll()
        {
            List<WSideFilterTypeVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WSideFilterType>().Select(x => new WSideFilterTypeVMR
                {
                    Id = x.Id,
                    FilterKey = x.FilterKey,
                    Title = x.Title,
                    ShowMoreTitle = x.ShowMoreTitle
                }).ToList();
            }

            return result;
        }

        public static WSideFilterTypeVMR ReadOne(long Id)
        {
            WSideFilterTypeVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WSideFilterType>().Where(x => x.Id == Id).Select(x => new WSideFilterTypeVMR
                {
                    Id = x.Id,
                    FilterKey = x.FilterKey,
                    Title = x.Title,
                    ShowMoreTitle = x.ShowMoreTitle
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
