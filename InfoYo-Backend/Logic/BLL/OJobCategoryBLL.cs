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
    public class OJobCategoryBLL
    {
        public static List<OJobCategoryVMR> ReadAll(long id)
        {
           return OJobCategoryDAL.ReadAll(id);
        }

        public static OJobCategoryVMR ReadOne(long id)
        {
            return OJobCategoryDAL.ReadOne(id);
        }

        public static long Create(OJobCategory item)
        {
            return OJobCategoryDAL.Create(item);
        }

        public static void Update(OJobCategory item)
        {
            OJobCategoryDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OJobCategoryDAL.Delete(id);
        }

    }
}
