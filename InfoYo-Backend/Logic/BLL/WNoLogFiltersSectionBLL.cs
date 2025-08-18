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
    public class WNoLogFiltersSectionBLL
    {
        public static WNoLogFiltersSectionVMR ReadOne(long id)
        {
            WNoLogFiltersSectionVMR result;

            result = WNoLogFiltersSectionDAL.ReadOne(id);
            result.WNoLogFiltersItems = WNoLogFiltersItemBLL.ReadAll();

            return result;
        }
    }
}
