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
    public class WLogDropDownMenuLinkBLL
    {
        public static List<WLogDropDownMenuLinkVMR> ReadAll()
        {
            return WLogDropDownMenuLinkDAL.ReadAll();
        }

        public static WLogDropDownMenuLinkVMR ReadOne(long id)
        {
            return WLogDropDownMenuLinkDAL.ReadOne(id);
        }
    }
}
