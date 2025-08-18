using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WNoLogNavBarLinkDAL
    {
        public static List<WNoLogNavBarLinkVMR> ReadAll()
        {
            List<WNoLogNavBarLinkVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogNavBarLink>().Select(x => new WNoLogNavBarLinkVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    LinkUrl = x.LinkUrl
                }).ToList();
            }

            return result;
        }

    }
}
