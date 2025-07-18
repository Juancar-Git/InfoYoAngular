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
            return WFtrLinksSectionColDAL.ReadAll();    
        }

        public static WFtrLinksSectionColVMR ReadOne(long id)
        {
            return WFtrLinksSectionColDAL.ReadOne(id);
        }
    }
}
