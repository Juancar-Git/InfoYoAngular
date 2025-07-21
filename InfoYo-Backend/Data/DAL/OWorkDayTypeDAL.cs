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
        public static List<OWorkDayTypeVMR> ReadAll()
        {
            List<OWorkDayTypeVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OWorkDayType>().Select(x => new OWorkDayTypeVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).ToList();
            }

            return result;
        }

        public static OWorkDayTypeVMR ReadOne(long id)
        {
            OWorkDayTypeVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OWorkDayType>().Where(x => x.Id == id).Select(x => new OWorkDayTypeVMR
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

        public static void Update(OWorkDayTypeVMR item)
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

        public static void Delete(long id)
        {
            using (var db = MyDbConnection.Create())
            {
                Delete(db, id);
            }
        }

        public static void Delete(MyDbConnection db, long id)
        {
            var item = db.Set<OWorkDayType>().Find(id);
            if (item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}
