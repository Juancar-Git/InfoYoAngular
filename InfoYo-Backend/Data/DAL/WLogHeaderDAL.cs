using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WLogHeaderDAL
    {
        public static WLogHeaderVMR ReadOne(long Id)
        {
            WLogHeaderVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WLogHeader>().Where(x => x.Id == Id).Select(x => new WLogHeaderVMR
                {
                    Id = x.Id,
                    Icon = x.Icon
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
