using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WMoreOptionsItemsDAL
    {
        public static List<WMoreOptionsItemsVMR> ReadAll()
        {
            List<WMoreOptionsItemsVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WMoreOptionsItems>().Select(x => new WMoreOptionsItemsVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    Url = x.Url
                }).ToList();
            }

            return result;
        }

        public static WMoreOptionsItemsVMR ReadOne(long id)
        {
            WMoreOptionsItemsVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WMoreOptionsItems>().Where(x => x.Id == id).Select(x => new WMoreOptionsItemsVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    Url = x.Url
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
