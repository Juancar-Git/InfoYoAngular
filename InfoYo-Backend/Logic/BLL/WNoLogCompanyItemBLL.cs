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
    public class WNoLogCompanyItemBLL
    {
        public static List<WNoLogCompanyItemVMR> ReadAll()
        {
            return WNoLogCompanyItemDAL.ReadAll();
        }

        public static WNoLogCompanyItemVMR ReadOne(long id)
        {
            return WNoLogCompanyItemDAL.ReadOne(id);
        }
    }
}
