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
    public class WNoLogSectorSectionBLL
    {
        public static List<WNoLogSectorSectionVMR> ReadAll()
        {
            return WNoLogSectorSectionDAL.ReadAll();
        }

        public static WNoLogSectorSectionVMR ReadOne(long id)
        {
            return WNoLogSectorSectionDAL.ReadOne(id);
        }
    }
}
