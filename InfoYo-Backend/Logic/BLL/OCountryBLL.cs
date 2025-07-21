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
    public class OCountryBLL
    {
        public static List<OCountryVMR> ReadAll()
        {
           return OCountryDAL.ReadAll();
        }

        public static OCountryVMR ReadOne(long id)
        {
            return OCountryDAL.ReadOne(id);
        }

        /*
        public static long Create(OCountry item)
        {
            return OCountryDAL.Create(item);
        }

        public static void Update(OCountryVMR item)
        {
            OCountryDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OCountryDAL.Delete(id);
        }
        */
    }
}
