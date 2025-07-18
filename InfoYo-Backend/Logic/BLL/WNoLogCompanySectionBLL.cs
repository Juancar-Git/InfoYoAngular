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
        public static List<WNoLogCompanySectionVMR> ReadAll()
        {
            return WNoLogCompanySectionDAL.ReadAll();
        }

        public static WNoLogCompanySectionVMR ReadOne(long id)
        {
            return WNoLogCompanySectionDAL.ReadOne(id);
        }
    }
}
