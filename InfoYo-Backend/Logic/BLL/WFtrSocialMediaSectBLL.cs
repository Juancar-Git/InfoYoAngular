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
    public class WFtrSocialMediaSectBLL
    {
        public static List<WFtrSocialMediaSectVMR> ReadAll()
        {
            return WFtrSocialMediaSectDAL.ReadAll();
        }

        public static WFtrSocialMediaSectVMR ReadOne(long id)
        {
            return WFtrSocialMediaSectDAL.ReadOne(id);
        }
    }
}
