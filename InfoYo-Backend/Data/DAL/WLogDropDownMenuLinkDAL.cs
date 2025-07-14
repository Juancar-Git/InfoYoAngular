using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WLogDropDownMenuLinkDAL
    {
        public static List<WLogDropDownMenuLinkVMR> ReadAll()
        {
            List<WLogDropDownMenuLinkVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WLogDropDownMenuLink>().Select(x => new WLogDropDownMenuLinkVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    LinkUrl = x.LinkUrl
                }).ToList();
            }

            return result;
        }

        public static WLogDropDownMenuLinkVMR ReadOne(long Id)
        {
            WLogDropDownMenuLinkVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WLogDropDownMenuLink>().Where(x => x.Id == Id).Select(x => new WLogDropDownMenuLinkVMR
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
