using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WFtrPartnersSectItemDAL
    {
        public static List<WFtrPartnersSectItemVMR> ReadAll()
        {
            List<WFtrPartnersSectItemVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrPartnersSectItem>().Select(x => new WFtrPartnersSectItemVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    ItemUrl = x.ItemUrl
                }).ToList();
            }

            return result;
        }

        public static WFtrPartnersSectItemVMR ReadOne(long id)
        {
            WFtrPartnersSectItemVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrPartnersSectItem>().Where(x => x.Id == id).Select(x => new WFtrPartnersSectItemVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    ItemUrl = x.ItemUrl
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
