using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class OJobCategoryDAL
    {
        public static List<OJobCategoryVMR> ReadAll()
        {
            List<OJobCategoryVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OJobCategory>().Select(x => new OJobCategoryVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).ToList();
            }

            return result;
        }

        public static OJobCategoryVMR ReadOne(long id)
        {
            OJobCategoryVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OJobCategory>().Where(x => x.Id == id).Select(x => new OJobCategoryVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).FirstOrDefault();
            }

            return result;
        }

        public static long Create(OJobCategory item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OJobCategory>().Add(item);
                db.SaveChanges();
            }
            return item.Id;
        }

        public static void Update(OJobCategoryVMR item)
        {
            using (var db = MyDbConnection.Create())
            {
                var updateItem = db.Set<OJobCategory>().Find(item.Id);
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
            var item = db.Set<OJobCategory>().Find(id);
            if (item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}
