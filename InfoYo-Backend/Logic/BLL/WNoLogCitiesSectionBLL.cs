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
        public static List<WNoLogCitiesSectionVMR> ReadAll()
        {
            return WNoLogCitiesSectionDAL.ReadAll();
        }

        public static WNoLogCitiesSectionVMR ReadOne(long id)
        {
            return WNoLogCitiesSectionDAL.ReadOne(id);
        }
    }
}
