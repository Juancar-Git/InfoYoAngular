using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WNoLogCitiesSectionDAL
    {
        public static List<WNoLogCitiesSectionVMR> ReadAll()
        {
            List<WNoLogCitiesSectionVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogCitiesSection>().Select(x => new WNoLogCitiesSectionVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    MoreCitiesBtn = x.MoreCitiesBtn
                }).ToList();
            }

            return result;
        }

        public static WNoLogCitiesSectionVMR ReadOne(long id)
        {
            WNoLogCitiesSectionVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogCitiesSection>().Where(x => x.Id == id).Select(x => new WNoLogCitiesSectionVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    MoreCitiesBtn = x.MoreCitiesBtn
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
