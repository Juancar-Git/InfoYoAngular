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
    public class WSideFilterItemBLL
    {
        public static List<WSideFilterItemVMR> ReadAll()
        {
            return WSideFilterItemDAL.ReadAll();
        }

        public static WSideFilterItemVMR ReadOne(long id)
        {
            return WSideFilterItemDAL.ReadOne(id);
        }
    }
}
