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
    public class OPersonBLL
    {
        public static PaginatedList<OPersonVMR> ReadAll(int quantity, int page, string searchText)
        {
            return OPersonDAL.ReadAll(quantity, page, searchText);
        }

        public static OPersonVMR ReadOne(long id)
        {
            return OPersonDAL.ReadOne(id);
        }

        public static long Create(OPerson item)
        {
            return OPersonDAL.Create(item);
        }

        public static void Update(OPersonVMR item)
        {
            OPersonDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OPersonDAL.Delete(id);
        }
    }
}
