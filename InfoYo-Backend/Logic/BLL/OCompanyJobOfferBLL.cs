using Common.ViewModels;
using Data.DAL;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Logic.BLL
{
    public class OCompanyJobOfferBLL
    {
        public static List<OCompanyJobOfferVMR> ReadByCompanyId(long id)
        {
            return OCompanyJobOfferDAL.ReadByCompanyId(id);
        }

        public static OCompanyJobOfferVMR ReadOne(long id)
        {
            return OCompanyJobOfferDAL.ReadOne(id);
        }

        public static long Create(OCompanyJobOffer item)
        {
            return OCompanyJobOfferDAL.Create(item);
        }

        public static void Update(OCompanyJobOfferVMR item)
        {
            OCompanyJobOfferDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OCompanyJobOfferDAL.Delete(id);
        }
    }
}
