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
            PaginatedList<AUserVMR> result = AUserDAL.ReadAll();            
               
            return result;
        }
        

        public static AUserVMR ReadOne(long Id)
        {
            AUserVMR result = AUserDAL.ReadOne(Id);

            return result;
        }
        */

        public static long Create(AUser item)
        {
            long id = AUserDAL.Create(item);

            return item.Id;
        }

        public static void Update(AUserVMR item)
        {
            AUserDAL.Update(item);
        }

        public static void Delete(long Id)
        {
            AUserDAL.Delete(Id);
        }
    }
}
