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
    public class WMyOffersPageBLL
    {
        public static WMyOffersPageVMR ReadOne(long id)
        {
            return WMyOffersPageDAL.ReadOne(id);
        }
    }
}
