using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class OCvVisitDAL
    {
        public static List<OCvVisitVMR> ReadByCompanyId(long id)
        {
            using (var db = MyDbConnection.Create())
            {
                return ReadByCompanyId(db, id);
            }
        }
        public static List<OCvVisitVMR> ReadByCompanyId(MyDbConnection db, long id)
        {

            return db.Set<OCvVisit>().Where(x => x.OCompanyId == id).Select(x => new OCvVisitVMR
            {
                Id = x.Id,
                VisitType = x.VisitType,
                Description = x.Description,
                SearchText = x.SearchText,
                Birthdate = x.Birthdate,
                OPersonId = x.OPersonId,
                OCompanyId = x.OCompanyId
            }).ToList();
        }

        public static List<OCvVisitVMR> ReadByPersonId(long id)
        {
            using (var db = MyDbConnection.Create())
            {
                return ReadByPersonId(db, id);
            }
        }
        public static List<OCvVisitVMR> ReadByPersonId(MyDbConnection db, long id)
        {

            return db.Set<OCvVisit>().Where(x => x.OPersonId == id).Select(x => new OCvVisitVMR
            {
                Id = x.Id,
                VisitType = x.VisitType,
                Description = x.Description,
                SearchText = x.SearchText,
                Birthdate = x.Birthdate,
                OPersonId = x.OPersonId,
                OCompanyId = x.OCompanyId
            }).ToList();
        }

        public static OCvVisitVMR ReadOne(long id)
        {
            OCvVisitVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OCvVisitVMR>().Where(x => x.Id == id).Select(x => new OCvVisitVMR
                {
                    Id = x.Id,
                    VisitType = x.VisitType,
                    Description = x.Description,
                    SearchText = x.SearchText,
                    Birthdate = x.Birthdate,
                    OPersonId = x.OPersonId,
                    OCompanyId = x.OCompanyId
                }).FirstOrDefault();
            }

            return result;
        }

        public static long Create(OCvVisit item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OCvVisit>().Add(item);
                db.SaveChanges();
            }
            return item.Id;
        }

        public static void Update(OCvVisit item)
        {
            using (var db = MyDbConnection.Create())
            {
                var updateItem = db.Set<OCvVisit>().Find(item.Id);
                if (updateItem == null) return;

                updateItem.VisitType = item.VisitType;
                updateItem.Description = item.Description;
                updateItem.SearchText = item.SearchText;
                updateItem.Birthdate = item.Birthdate;
                updateItem.OPersonId = item.OPersonId;
                updateItem.OCompanyId = item.OCompanyId;

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
            var item = db.Set<OCvVisit>().Find(id);
            if (item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}
