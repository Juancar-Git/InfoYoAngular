using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WNoLogFiltersSectionDAL
    {
        public static List<WNoLogFiltersSectionVMR> ReadAll()
        {
            List<WNoLogFiltersSectionVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogFiltersSection>().Select(x => new WNoLogFiltersSectionVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    MoreFiltersBtn = x.MoreFiltersBtn
                }).ToList();
            }

            return result;
        }

        public static WNoLogFiltersSectionVMR ReadOne(long id)
        {
            WNoLogFiltersSectionVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogFiltersSection>().Where(x => x.Id == id).Select(x => new WNoLogFiltersSectionVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    MoreFiltersBtn = x.MoreFiltersBtn
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
