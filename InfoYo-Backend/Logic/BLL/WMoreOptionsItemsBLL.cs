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
    public class WMoreOptionsItemsBLL
    {
        public static List<WMoreOptionsItemsVMR> ReadAll()
        {
            return WMoreOptionsItemsDAL.ReadAll();
        }

        public static WMoreOptionsItemsVMR ReadOne(long id)
        {
            return WMoreOptionsItemsDAL.ReadOne(id);
        }
    }
}
