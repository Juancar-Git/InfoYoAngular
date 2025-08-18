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
    public class WNoLogHeaderBLL
    {
        public static WNoLogHeaderVMR ReadOne(long id)
        {
            WNoLogHeaderVMR result;

            result = WNoLogHeaderDAL.ReadOne(id);
            result.WNoLogNavBarLinks = WNoLogNavBarLinkBLL.ReadAll();

            return result;
        }
    }
}
