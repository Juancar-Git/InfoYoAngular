using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class OCnyComplaintOpinionDAL
    {
        public static List<OCnyComplaintOpinionVMR> ReadByPersonId(long id)
        {
            using (var db = MyDbConnection.Create())
            {
                return ReadByPersonId(db, id);
            }
        }

        public static List<OCnyComplaintOpinionVMR> ReadByPersonId(MyDbConnection db, long id)
        {
            return db.Set<OCnyComplaintOpinion>().Where(x => x.OPersonId == id).Select(x => new OCnyComplaintOpinionVMR
            {
                OCompanyOpinionId = x.OCompanyOpinionId,
                OPersonId = x.OPersonId,
                Description = x.Description,
                Active = x.Active,
                OCnyComplaintReasonId = x.OCnyComplaintReasonId
            }).ToList();
        }

        public static OCnyComplaintOpinionVMR ReadOne(long OCompanyOpinionId, long OPersonId)
        {
            OCnyComplaintOpinionVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OCnyComplaintOpinion>().Where(x => x.OCompanyOpinionId == OCompanyOpinionId && x.OPersonId == OPersonId).Select(x => new OCnyComplaintOpinionVMR
                {
                    OCompanyOpinionId = x.OCompanyOpinionId,
                    OPersonId = x.OPersonId,
                    Description = x.Description,
                    Active = x.Active,
                    OCnyComplaintReasonId = x.OCnyComplaintReasonId
                }).FirstOrDefault();

                result.OCnyComplaintReason = OCnyComplaintReasonDAL.ReadOne(result.OCnyComplaintReasonId);
            }

            return result;
        }

        public static (long OCompanyOpinionId, long OPersonId) Create(OCnyComplaintOpinion item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OCnyComplaintOpinion>().Add(item);
                db.SaveChanges();
            }
            return (item.OCompanyOpinionId, item.OPersonId);
        }

        public static void Update(OCnyComplaintOpinion item)
        {
            using (var db = MyDbConnection.Create())
            {
                var updateItem = db.Set<OCnyComplaintOpinion>().Find(item.OCompanyOpinionId, item.OPersonId);
                if (updateItem == null) return;

                updateItem.Description = item.Description;
                updateItem.Active = item.Active;
                updateItem.OCnyComplaintReasonId = item.OCnyComplaintReasonId;

                db.Entry(updateItem).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
        }

        public static void Delete(long OCompanyOpinionId, long OPersonId)
        {
            using (var db = MyDbConnection.Create())
            {
                Delete(db, OCompanyOpinionId, OPersonId);
            }
        }

        public static void Delete(MyDbConnection db, long OCompanyOpinionId, long OPersonId)
        {
            var item = db.Set<OCnyComplaintOpinion>().Find(OCompanyOpinionId, OPersonId);
            if (item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}
