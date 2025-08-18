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
    public class WNoLogCompanyPublicityItemBLL
    {
        public static List<WNoLogCompanyPublicityItemVMR> ReadAll()
        {
            return WNoLogCompanyPublicityItemDAL.ReadAll();
        }
    }
}
