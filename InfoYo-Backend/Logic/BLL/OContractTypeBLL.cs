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
    public class OContractTypeBLL
    {
        public static List<OContractTypeVMR> ReadAll()
        {
            return OContractTypeDAL.ReadAll();
        }

        public static OContractTypeVMR ReadOne(long id)
        {
            return OContractTypeDAL.ReadOne(id);
        }

        public static long Create(OContractType item)
        {
            return OContractTypeDAL.Create(item);
        }

        public static void Update(OContractTypeVMR item)
        {
            OContractTypeDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OContractTypeDAL.Delete(id);
        }
    }
}
