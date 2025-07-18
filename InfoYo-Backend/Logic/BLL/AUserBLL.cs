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
    public class AUserBLL
    {
        //Para Usuario Administrador que pueda gesitionar las cuentas
        /*
        public static PaginatedList<AUserVMR> ReadAll(int quantity, int page, string searchText)
        {
            return AUserDAL.ReadAll();
        }
        

        public static AUserVMR ReadOne(long id)
        {
            return AUserDAL.ReadOne(id);
        }
        */

        public static long Create(AUser item)
        {
            return AUserDAL.Create(item);
        }

        public static void Update(AUserVMR item)
        {
            AUserDAL.Update(item);
        }

        public static void Delete(long id)
        {
            AUserDAL.Delete(id);
        }
    }
}
