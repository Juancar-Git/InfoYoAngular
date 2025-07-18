using Common.ViewModels;
using Data.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logic.BLL
{
    public class WCandidateLogInBLL
    {
        public static WCandidateLogInVMR ReadOne(long id)
        {
            return WCandidateLogInDAL.ReadOne(id);
        }
    }
}
