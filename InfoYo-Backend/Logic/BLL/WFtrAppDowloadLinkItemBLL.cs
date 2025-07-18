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
    public class WFtrAppDowloadLinkItemBLL
    {
        public static List<WFtrAppDowloadLinkItemVMR> ReadAll()
        {
            return WFtrAppDowloadLinkItemDAL.ReadAll();
        }

        public static WFtrAppDowloadLinkItemVMR ReadOne(long id)
        {
            return WFtrAppDowloadLinkItemDAL.ReadOne(id);
        }
    }
}
