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
    public class OCompanyInfoBLL
    {
        //ESTE OBJETO SOLO TIENE SENTIDO SI VA ENLAZADO A UN OBJETO COMPANY
        //ES UNA RELACIÓN DE UNO A UNO POR LO QUE EN EL OTRO LADO NO DEBERÍA HABER UNA LISTA --> CAMBIAR
        public static List<OCompanyInfoVMR> ReadByCompanyId(long id)
        {
            return OCompanyInfoDAL.ReadByCompanyId(id);
        }

        //ESTE OBJETO SOLO TIENE SENTIDO SI VA ENLAZADO A UN OBJETO COMPANY
        //ES UNA RELACIÓN DE UNO A UNO POR LO QUE EN EL OTRO LADO NO DEBERÍA HABER UNA LISTA --> CAMBIAR
        public static OCompanyInfoVMR ReadOne(long companyId)
        {
            return OCompanyInfoDAL.ReadOne(companyId);
        }

        public static long Create(OCompanyInfo item)
        {
            return OCompanyInfoDAL.Create(item);
        }

        public static void Update(OCompanyInfoVMR item)
        {
            OCompanyInfoDAL.Update(item);
        }

        public static void Delete(long id)
        {
            OCompanyInfoDAL.Delete(id);
        }
    }
}
