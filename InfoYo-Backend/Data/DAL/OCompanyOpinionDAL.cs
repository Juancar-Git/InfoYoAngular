using Common.ViewModels;
using Model.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class OCompanyOpinionDAL
    {
        public static List<OCompanyOpinionVMR> ReadByCompanyId(long id)
        {
            using (var db = MyDbConnection.Create())
            {
                return ReadByCompanyId(db, id);
            }
        }
        public static List<OCompanyOpinionVMR> ReadByCompanyId(MyDbConnection db, long id)
        {
            return db.Set<OCompanyOpinion>().Where(x => x.OCompanyId == id).Select(x => new OCompanyOpinionVMR
            {
                Id = x.Id,
                Description = x.Description,
                Stars = x.Stars,
                Complaints = x.Complaints,
                OCompanyId = x.OCompanyId,
                OPersonId = x.OPersonId
            }).ToList();
        }

        public static List<OCompanyOpinionVMR> ReadByPersonId(long id)
        {
            using (var db = MyDbConnection.Create())
            {
                return ReadByPersonId(db, id);
            }
        }
        public static List<OCompanyOpinionVMR> ReadByPersonId(MyDbConnection db, long id)
        {
            return db.Set<OCompanyOpinion>().Where(x => x.OPersonId == id).Select(x => new OCompanyOpinionVMR
            {
                Id = x.Id,
                Description = x.Description,
                Stars = x.Stars,
                Complaints = x.Complaints,
                OCompanyId = x.OCompanyId,
                OPersonId = x.OPersonId
            }).ToList();
        }

        public static OCompanyOpinionVMR ReadOne(long id)
        {
            OCompanyOpinionVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OCompanyOpinion>().Where(x => x.Id == id).Select(x => new OCompanyOpinionVMR
                {
                    Id = x.Id,
                    Description = x.Description,
                    Stars = x.Stars,
                    Complaints = x.Complaints,
                    OCompanyId = x.OCompanyId,
                    OPersonId = x.OPersonId
                }).FirstOrDefault();
            }

            return result;
        }

        public static long Create(OCompanyOpinion item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OCompanyOpinion>().Add(item);
                db.SaveChanges();
            }
            return item.Id;
        }

        public static void Update(OCompanyOpinion item)
        {
            using (var db = MyDbConnection.Create())
            {
                var updateItem = db.Set<OCompanyOpinion>().Find(item.Id);
                if (updateItem == null) return;

                updateItem.Description = item.Description;
                updateItem.Stars = item.Stars;
                updateItem.Complaints = item.Complaints;
                updateItem.OCompanyId = item.OCompanyId;
                updateItem.OPersonId = item.OPersonId;

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

        public static void Delete(MyDbConnection db, long Id)
        {
            var item = db.Set<OCompanyOpinion>().Find(Id);
            if (item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}
