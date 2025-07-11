using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WFtrLinksSectionColDAL
    {
        public static List<WFtrLinksSectionColVMR> ReadAll(long Id)
        {
            List<WFtrLinksSectionColVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrLinksSectionCol>().Where(x => x.Id == Id).Select(x => new WFtrLinksSectionColVMR
                {
                    Id = x.Id,
                    Title = x.Title
                }).ToList();
            }

            return result;
        }

        public static WFtrLinksSectionColVMR ReadOne(long Id)
        {
            WFtrLinksSectionColVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrLinksSectionCol>().Where(x => x.Id == Id).Select(x => new WFtrLinksSectionColVMR
                {
                    Id = x.Id,
                    Title = x.Title
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
