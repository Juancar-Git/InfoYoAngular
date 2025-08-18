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
    public class WNoLogCitiesSectionBLL
    {
        public static WNoLogCitiesSectionVMR ReadOne(long id)
        {
            WNoLogCitiesSectionVMR result;

            result = WNoLogCitiesSectionDAL.ReadOne(id);
            result.WNoLogCitiesItems = WNoLogCitiesItemBLL.ReadAll();

            return result;
        }
    }
}
