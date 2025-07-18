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
    public class WSideFilterTypeBLL
    {
        public static List<WSideFilterTypeVMR> ReadAll()
        {
             return WSideFilterTypeDAL.ReadAll();
        }

        public static WSideFilterTypeVMR ReadOne(long id)
        {
            return WSideFilterTypeDAL.ReadOne(id);
        }
    }
}
