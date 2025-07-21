using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class OContractTypeDAL
    {
        public static List<OContractTypeVMR> ReadAll()
        {
            List<OContractTypeVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OContractType>().Select(x => new OContractTypeVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).ToList();
            }

            return result;
        }

        public static OContractTypeVMR ReadOne(long id)
        {
            OContractTypeVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OContractType>().Where(x => x.Id == id).Select(x => new OContractTypeVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).FirstOrDefault();
            }

            return result;
        }

        public static long Create(OContractType item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OContractType>().Add(item);
                db.SaveChanges();
            }
            return item.Id;
        }

        public static void Update(OContractTypeVMR item)
        {
            using (var db = MyDbConnection.Create())
            {
                var updateItem = db.Set<OContractType>().Find(item.Id);
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
            var item = db.Set<OContractType>().Find(id);
            if (item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}
