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
    public class WMyCvSectBLL
    {
        public static List<WMyCvSectVMR> ReadAll()
        {
            return WMyCvSectDAL.ReadAll();
        }

        public static WMyCvSectVMR ReadOne(long id)
        {
            return WMyCvSectDAL.ReadOne(id);
        }
    }
}
