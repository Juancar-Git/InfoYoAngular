using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WFtrLinksSectionColItemDAL
    {
        public static List<WFtrLinksSectionColItemVMR> ReadAll(long Id)
        {
            List<WFtrLinksSectionColItemVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrLinksSectionColItem>().Where(x => x.Id == Id).Select(x => new WFtrLinksSectionColItemVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    TitleHoverDesc = x.TitleHoverDesc,
                    ItemPath = x.ItemPath,
                    WFtrLinksSectionColId = x.WFtrLinksSectionColId
                }).ToList();
            }

            return result;
        }

        public static WFtrLinksSectionColItemVMR ReadOne(long Id)
        {
            WFtrLinksSectionColItemVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrLinksSectionColItem>().Where(x => x.Id == Id).Select(x => new WFtrLinksSectionColItemVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    TitleHoverDesc = x.TitleHoverDesc,
                    ItemPath = x.ItemPath,
                    WFtrLinksSectionColId = x.WFtrLinksSectionColId
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
