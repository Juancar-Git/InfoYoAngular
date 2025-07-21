using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class OCountryDAL
    {
        public static List<OCountryVMR> ReadAll()
        {
            List<OCountryVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OCountry>().Select(x => new OCountryVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    IsoCode = x.IsoCode
                }).ToList();
            }

            return result;
        }

        public static OCountryVMR ReadOne(long id)
        {
            OCountryVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OCountry>().Where(x => x.Id == id).Select(x => new OCountryVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    IsoCode = x.IsoCode
                }).FirstOrDefault();
            }

            return result;
        }

        /*
        public static long Create(OCountry item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OCountry>().Add(item);
                db.SaveChanges();
            }
            return item.Id;
        }

        public static void Update(OCountryVMR item)
        {
            using (var db = MyDbConnection.Create())
            {
                var updateItem = db.Set<OCountry>().Find(item.Id);
                if (updateItem == null) return;

                updateItem.Name = item.Name;
                updateItem.IsoCode = item.IsoCode;

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
            var item = db.Set<OCountry>().Find(id);
            if (item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
        */
    }
}
