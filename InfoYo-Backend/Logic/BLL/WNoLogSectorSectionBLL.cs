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
        public static WNoLogSectorSectionVMR ReadOne(long id)
        {
            WNoLogSectorSectionVMR result;

            result = WNoLogSectorSectionDAL.ReadOne(id);
            result.WNoLogSectorItems = WNoLogSectorItemBLL.ReadAll();

            return result;
        }
    }
}
