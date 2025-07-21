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
    public class OCvVisitBLL
    {
        public static List<OCvVisitVMR> ReadByCompanyId(long id)
        {
            return OCvVisitDAL.ReadByCompanyId(id);
        }

        public static List<OCvVisitVMR> ReadByPersonId(long id)
        {
            return OCvVisitDAL.ReadByPersonId(id);
        }

        public static OCvVisitVMR ReadOne(long id)
        {
            return OCvVisitDAL.ReadOne(id);
        }

        public static long Create(OCvVisit item)
        {
            return OCvVisitDAL.Create(item);
        }

        public static void Update(OCvVisitVMR item)
        {
            OCvVisitDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OCvVisitDAL.Delete(id);
        }
    }
}
