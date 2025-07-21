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
    public class OCnyComplaintReasonBLL
    {
        public static List<OCnyComplaintReasonVMR> ReadAll()
        {
            return OCnyComplaintReasonDAL.ReadAll();
        }

        public static OCnyComplaintReasonVMR ReadOne(long id)
        {
            return OCnyComplaintReasonDAL.ReadOne(id);
        }

        public static long Create(OCnyComplaintReason item)
        {
            return OCnyComplaintReasonDAL.Create(item);
        }

        public static void Update(OCnyComplaintReasonVMR item)
        {
            OCnyComplaintReasonDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OCnyComplaintReasonDAL.Delete(id);
        }
    }
}
