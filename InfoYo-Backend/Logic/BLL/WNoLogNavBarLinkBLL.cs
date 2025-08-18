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
    public class WNoLogNavBarLinkBLL
    {
        public static List<WNoLogNavBarLinkVMR> ReadAll()
        {
            return WNoLogNavBarLinkDAL.ReadAll();
        }
    }
}
