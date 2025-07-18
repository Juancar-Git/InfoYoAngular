using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WGenderDAL
    {
        public static List<WGenderVMR> ReadAll()
        {
            List<WGenderVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WGender>().Select(x => new WGenderVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).ToList();
            }

            return result;
        }

        public static WGenderVMR ReadOne(long id)
        {
            WGenderVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WGender>().Where(x => x.Id == id).Select(x => new WGenderVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
