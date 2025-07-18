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
    public class WFtrPartnersSectItemBLL
    {
        public static List<WFtrPartnersSectItemVMR> ReadAll()
        {
            return WFtrPartnersSectItemDAL.ReadAll();
        }

        public static WFtrPartnersSectItemVMR ReadOne(long id)
        {
            return WFtrPartnersSectItemDAL.ReadOne(id);
        }
    }
}
