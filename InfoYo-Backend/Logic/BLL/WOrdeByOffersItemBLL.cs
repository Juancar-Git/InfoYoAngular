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
    public class WOrdeByOffersItemBLL
    {
        public static List<WOrdeByOffersItemVMR> ReadAll()
        {
            return WOrdeByOffersItemDAL.ReadAll();
        }

        public static WOrdeByOffersItemVMR ReadOne(long id)
        {
            return WOrdeByOffersItemDAL.ReadOne(id);
        }
    }
}
