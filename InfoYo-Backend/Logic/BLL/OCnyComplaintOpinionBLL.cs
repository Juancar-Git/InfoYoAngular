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
    public class OCnyComplaintOpinionBLL
    {
        public static List<OCnyComplaintOpinionVMR> ReadByPersonId(long id)
        {
            return OCnyComplaintOpinionDAL.ReadByPersonId(id);
        }

        public static OCnyComplaintOpinionVMR ReadOne(long OCompanyOpinionId, long OPersonId)
        {
            return OCnyComplaintOpinionDAL.ReadOne(OCompanyOpinionId, OPersonId);
        }

        public static (long OCompanyOpinionId, long OPersonId) Create(OCnyComplaintOpinion item)
        {
            return OCnyComplaintOpinionDAL.Create(item);
        }

        public static void Update(OCnyComplaintOpinionVMR item)
        {
            OCnyComplaintOpinionDAL.Update(item);
        }

        public static void Delete(long OCompanyOpinionId, long OPersonId)
        {
            OCnyComplaintOpinionDAL.Delete(OCompanyOpinionId, OPersonId);
        }
    }
}
