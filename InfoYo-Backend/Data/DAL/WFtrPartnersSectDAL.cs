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
        public static List<WFtrPartnersSectVMR> ReadAll(long Id)
        {
            List<WFtrPartnersSectVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrPartnersSect>().Where(x => x.Id == Id).Select(x => new WFtrPartnersSectVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    CopyrightText = x.CopyrightText
                }).ToList();
            }

            return result;
        }

        public static WFtrPartnersSectVMR ReadOne(long Id)
        {
            WFtrPartnersSectVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrPartnersSect>().Where(x => x.Id == Id).Select(x => new WFtrPartnersSectVMR
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
