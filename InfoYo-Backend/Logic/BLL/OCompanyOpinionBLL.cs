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
    public class OCompanyOpinionBLL
    {
        public static List<OCompanyOpinionVMR> ReadByCompanyId(long id)
        {
            return OCompanyOpinionDAL.ReadByCompanyId(id);
        }
        
        public static List<OCompanyOpinionVMR> ReadByPersonId(long id)
        {
            return OCompanyOpinionDAL.ReadByPersonId(id);
        }

        public static OCompanyOpinionVMR ReadOne(long id)
        {
            return OCompanyOpinionDAL.ReadOne(id);
        }

        public static long Create(OCompanyOpinion item)
        {
            return OCompanyOpinionDAL.Create(item);
        }

        public static void Update(OCompanyOpinionVMR item)
        {
            OCompanyOpinionDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OCompanyOpinionDAL.Delete(id);
        }

    }
}
