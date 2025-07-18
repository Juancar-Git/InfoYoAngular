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
    public class WJobsPageNoFiltBLL
    {
        public static WJobsPageNoFiltVMR ReadOne(long id)
        {
            return WJobsPageNoFiltDAL.ReadOne(id);
        }
    }
}
