using Common.ViewModels;
using Data.DAL;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logic.BLL
{
    public class WFtrLinksSectionColBLL
    {
        public static List<WFtrLinksSectionColVMR> ReadAll()
        {
            List<WFtrLinksSectionColVMR> result;

            result = WFtrLinksSectionColDAL.ReadAll();
            foreach (var item in result)
            {
                item.WFtrLinksSectionColItem = WFtrLinksSectionColItemBLL.ReadByColId(item.Id);
            }

            return result;    
        }

    }
}
