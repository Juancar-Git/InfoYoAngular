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
    public class OPublicityDataBLL
    {
        public static List<OPublicityDataVMR> ReadAll(long id)
        {
            return OPublicityDataDAL.ReadAll(id);
        }

        public static OPublicityDataVMR ReadOne(long id)
        {
            return OPublicityDataDAL.ReadOne(id);
        }

        public static long Create(OPublicityData item)
        {
            return OPublicityDataDAL.Create(item);
        }

        public static void Update(OPublicityData item)
        {
            OPublicityDataDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OPublicityDataDAL.Delete(id);
        }
    }
}
