using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WOrdeByOffersItemDAL
    {
        public static List<WOrdeByOffersItemVMR> ReadAll()
        {
            List<WOrdeByOffersItemVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WOrdeByOffersItem>().Select(x => new WOrdeByOffersItemVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).ToList();
            }

            return result;
        }

        public static WOrdeByOffersItemVMR ReadOne(long Id)
        {
            WOrdeByOffersItemVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WOrdeByOffersItem>().Where(x => x.Id == Id).Select(x => new WOrdeByOffersItemVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
