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
    public class OMinStudyBLL
    {
        public static List<OMinStudyVMR> ReadAll(long id)
        {
            return OMinStudyDAL.ReadAll(id);
        }

        public static OMinStudyVMR ReadOne(long id)
        {
            return OMinStudyDAL.ReadOne(id);
        }

        public static long Create(OMinStudy item)
        {
            return OMinStudyDAL.Create(item);
        }

        public static void Update(OMinStudy item)
        {
            OMinStudyDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OMinStudyDAL.Delete(id);
        }

    }
}
