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
    public class WFtrSocialMediaSectItemBLL
    {
        public static List<WFtrSocialMediaSectItemVMR> ReadAll()
        {
            return WFtrSocialMediaSectItemDAL.ReadAll();
        }

        public static WFtrSocialMediaSectItemVMR ReadOne(long id)
        {
            return WFtrSocialMediaSectItemDAL.ReadOne(id);
        }
    }
}
