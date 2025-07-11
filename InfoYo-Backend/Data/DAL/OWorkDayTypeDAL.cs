using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class OWorkDayTypeDAL
    {
        public static List<OWorkDayTypeVMR> ReadAll(long Id)
        {
            List<OWorkDayTypeVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OWorkDayType>().Where(x => x.Id == Id).Select(x => new OWorkDayTypeVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).ToList();
            }

            return result;
        }

        public static OWorkDayTypeVMR ReadOne(long Id)
        {
            OWorkDayTypeVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OWorkDayType>().Where(x => x.Id == Id).Select(x => new OWorkDayTypeVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).FirstOrDefault();
            }

            return result;
        }

        public static long Create(OWorkDayType item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OWorkDayType>().Add(item);
                db.SaveChanges();
            }
            return item.Id;
        }

        public static void Update(OWorkDayType item)
        {
            using (var db = MyDbConnection.Create())
            {
                var updateItem = db.Set<OWorkDayType>().Find(item.Id);
                if (updateItem == null) return;

                updateItem.Name = item.Name;

                db.Entry(updateItem).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
        }

        public static void Delete(long Id)
        {
            using (var db = MyDbConnection.Create())
            {
                Delete(db, Id);
            }
        }

        public static void Delete(MyDbConnection db, long Id)
        {
            var item = db.Set<OWorkDayType>().Find(Id);
            if (item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}
