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
    public class WProfileVisitsPageBLL
    {
        public static WProfileVisitsPageVMR ReadOne(long id)
        {
            return WProfileVisitsPageDAL.ReadOne(id);
        }
    }
}
