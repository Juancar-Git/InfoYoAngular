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
        public static List<WNoLogFiltersSectionVMR> ReadAll()
        {
            return WNoLogFiltersSectionDAL.ReadAll();
        }

        public static WNoLogFiltersSectionVMR ReadOne(long id)
        {
            return WNoLogFiltersSectionDAL.ReadOne(id);
        }
    }
}
