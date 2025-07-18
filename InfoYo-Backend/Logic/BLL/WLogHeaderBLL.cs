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
    public class WLogHeaderBLL
    {
        public static WLogHeaderVMR ReadOne(long id)
        {
            return WLogHeaderDAL.ReadOne(id);
        }
    }
}
