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
        public static List<WFtrLinksSectionColVMR> ReadAll()
        {
            List<WFtrLinksSectionColVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrLinksSectionCol>().Select(x => new WFtrLinksSectionColVMR
                {
                    Id = x.Id,
                    Title = x.Title
                }).ToList();

                foreach (var item in result)
                {
                    item.WFtrLinksSectionColItem = WFtrLinksSectionColItemDAL.ReadByColId(item.Id);
                }

            }

            return result;
        }

        public static WFtrLinksSectionColVMR ReadOne(long id)
        {
            WFtrLinksSectionColVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrLinksSectionCol>().Where(x => x.Id == id).Select(x => new WFtrLinksSectionColVMR
                {
                    Id = x.Id,
                    Title = x.Title
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
