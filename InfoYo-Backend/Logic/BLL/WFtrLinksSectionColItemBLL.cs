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
    public class WFtrLinksSectionColItemBLL
    {
        public static List<WFtrLinksSectionColItemVMR> ReadAll()
        {
            return WFtrLinksSectionColItemDAL.ReadAll();
        }

        public static WFtrLinksSectionColItemVMR ReadOne(long id)
        {
            return WFtrLinksSectionColItemDAL.ReadOne(id);
        }
    }
}
