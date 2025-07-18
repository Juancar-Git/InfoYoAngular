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
    public class WGenderBLL
    {
        public static List<WGenderVMR> ReadAll()
        {
            return WGenderDAL.ReadAll();
        }

        public static WGenderVMR ReadOne(long id)
        {
            return WGenderDAL.ReadOne(id);
        }
    }
}
