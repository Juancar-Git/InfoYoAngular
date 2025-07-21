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
    public class OCompanyBLL
    {
        public static PaginatedList<OCompanyVMR> ReadAll(int quantity, int page, string searchText)
        {
           return OCompanyDAL.ReadAll(quantity, page, searchText);
        }

        public static OCompanyVMR ReadOne(long id)
        {
            return OCompanyDAL.ReadOne(id);
        }

        public static long Create(OCompany item)
        {
            return OCompanyDAL.Create(item);


        }
        public static void Update(OCompanyVMR item)
        {
            OCompanyDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OCompanyDAL.Delete(id);
        }
    }
}
