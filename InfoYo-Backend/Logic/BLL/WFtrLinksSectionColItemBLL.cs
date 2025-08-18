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
        public static List<WFtrLinksSectionColItemVMR> ReadByColId(long colId)
        {
            return WFtrLinksSectionColItemDAL.ReadByColId(colId);
        }
    }
}
