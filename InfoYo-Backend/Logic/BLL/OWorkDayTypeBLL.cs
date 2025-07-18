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
    public class OWorkDayTypeBLL
    {
        public static List<OWorkDayTypeVMR> ReadAll(long id)
        {
            return OWorkDayTypeDAL.ReadAll(id);
        }

        public static OWorkDayTypeVMR ReadOne(long id)
        {
            return OWorkDayTypeDAL.ReadOne(id);
        }

        public static long Create(OWorkDayType item)
        {
            return OWorkDayTypeDAL.Create(item);
        }

        public static void Update(OWorkDayType item)
        {
            OWorkDayTypeDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OWorkDayTypeDAL.Delete(id);
        }
    }
}
