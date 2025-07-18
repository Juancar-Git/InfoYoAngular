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
    public class WLogNavBarLinkBLL
    {
        public static List<WLogNavBarLinkVMR> ReadAll()
        {
            return WLogNavBarLinkDAL.ReadAll();
        }

        public static WLogNavBarLinkVMR ReadOne(long id)
        {
            return WLogNavBarLinkDAL.ReadOne(id);
        }
    }
}
