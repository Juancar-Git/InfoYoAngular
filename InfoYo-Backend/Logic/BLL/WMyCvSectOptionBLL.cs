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
    public class WMyCvSectOptionBLL
    {
        public static List<WMyCvSectOptionVMR> ReadAll()
        {
            return WMyCvSectOptionDAL.ReadAll();
        }

        public static WMyCvSectOptionVMR ReadOne(long id)
        {
            return WMyCvSectOptionDAL.ReadOne(id);
        }
    }
}
