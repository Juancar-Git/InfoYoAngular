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
    public class OJobOfferPersonBLL
    {
        public static List<OJobOfferPersonVMR> ReadByPersonId(long id)
        { 
            return OJobOfferPersonDAL.ReadByPersonId(id);
        }

        public static OJobOfferPersonVMR ReadOne(long OPersonId, long OjobOfferId)
        {
            return OJobOfferPersonDAL.ReadOne(OPersonId, OjobOfferId);
        }

        public static long Create(OJobOfferPerson item)
        {
            return OJobOfferPersonDAL.Create(item);
        }

        public static void Update(OJobOfferPerson item)
        {
            OJobOfferPersonDAL.Update(item);
        }

        public static void Delete(long OPersonId, long OjobOfferId)
        {
            OJobOfferPersonDAL.Delete(OPersonId, OjobOfferId);
        }
    }
}
