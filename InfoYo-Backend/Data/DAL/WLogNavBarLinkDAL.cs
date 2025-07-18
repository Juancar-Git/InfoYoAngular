using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WLogNavBarLinkDAL
    {
        public static List<WLogNavBarLinkVMR> ReadAll()
        {
            List<WLogNavBarLinkVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WLogNavBarLink>().Select(x => new WLogNavBarLinkVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    LinkUrl = x.LinkUrl
                }).ToList();
            }

            return result;
        }

        public static WLogNavBarLinkVMR ReadOne(long id)
        {
            WLogNavBarLinkVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WLogNavBarLink>().Where(x => x.Id == id).Select(x => new WLogNavBarLinkVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    LinkUrl = x.LinkUrl
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
