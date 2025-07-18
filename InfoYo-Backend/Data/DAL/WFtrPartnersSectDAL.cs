using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WFtrPartnersSectDAL
    {
        public static List<WFtrPartnersSectVMR> ReadAll()
        {
            List<WFtrPartnersSectVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrPartnersSect>().Select(x => new WFtrPartnersSectVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    CopyrightText = x.CopyrightText
                }).ToList();
            }

            return result;
        }

        public static WFtrPartnersSectVMR ReadOne(long id)
        {
            WFtrPartnersSectVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrPartnersSect>().Where(x => x.Id == id).Select(x => new WFtrPartnersSectVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    CopyrightText = x.CopyrightText
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
