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
    public class WNoLogCompanySectionBLL
    {
        public static WNoLogCompanySectionVMR ReadOne(long id)
        {
            WNoLogCompanySectionVMR result = WNoLogCompanySectionDAL.ReadOne(id);
            
            result.WNoLogCompanyItems = WNoLogCompanyItemBLL.ReadAll();
            result.WNoLogCompanyPublicityItems = WNoLogCompanyPublicityItemBLL.ReadAll();
            
            return result;
        }
    }
}
