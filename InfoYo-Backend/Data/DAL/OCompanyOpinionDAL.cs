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

            return db.Set<OCompanyOpinion>().Where(x => x.Id == id).Select(x => new OCompanyOpinionVMR
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
            using (var db = MyDbConnection.Create())
            {
                return ReadOne(db, id);
            }
        }
        public static OCompanyOpinionVMR ReadOne(MyDbConnection db, long id)
        {
                
            return db.Set<OCompanyOpinion>().Where(x => x.Id == id).Select(x => new OCompanyOpinionVMR
            {
                Id = x.Id,
                Description = x.Description,
                Stars = x.Stars,
                Complaints = x.Complaints,
                OCompanyId = x.OCompanyId,
                OPersonId = x.OPersonId
            }).FirstOrDefault();
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

                updateItem.Description = item.Description;
                updateItem.Stars = item.Stars;
                updateItem.Complaints = item.Complaints;
                updateItem.OCompanyId = item.OCompanyId;
                updateItem.OPersonId = item.OPersonId;

                db.Entry(updateItem).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
        }

        public static void Delete(long Id)
        {
            using (var db = MyDbConnection.Create())
            {
                var item = db.Set<OCompanyOpinion>().Find(Id);

                db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();
            }
        }
    }
}
