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
    public class WPersonalDataPageBLL
    {
        public static WPersonalDataPageVMR ReadOne(long id)
        {
            return WPersonalDataPageDAL.ReadOne(id);
        }
    }
}
