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
    public class WFtrPartnersSectBLL
    {
        public static List<WFtrPartnersSectVMR> ReadAll()
        {
           return WFtrPartnersSectDAL.ReadAll();
        }

        public static WFtrPartnersSectVMR ReadOne(long id)
        {
           return WFtrPartnersSectDAL.ReadOne(id);
        }
    }
}
