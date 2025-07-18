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
        public static WLogHeaderVMR ReadOne(long id)
        {
            WLogHeaderVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WLogHeader>().Where(x => x.Id == id).Select(x => new WLogHeaderVMR
                {
                    Id = x.Id,
                    Icon = x.Icon
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
