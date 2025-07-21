using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class OJobOfferPersonDAL
    {
        public static List<OJobOfferPersonVMR> ReadByPersonId(long id)
        {
            using (var db = MyDbConnection.Create())
            {
                return ReadByPersonId(db, id);
            }
        }

        public static List<OJobOfferPersonVMR> ReadByPersonId(MyDbConnection db, long id)
        {
            return db.Set<OJobOfferPerson>().Where(x => x.OPersonId == id).Select(x => new OJobOfferPersonVMR
            {
                OPersonId = x.OPersonId,
                OJobOfferId = x.OJobOfferId,
                ApplicationDate = x.ApplicationDate,
                Status = x.Status
            }).ToList();
        }

        public static OJobOfferPersonVMR ReadOne(long OPersonId, long OJobOfferId)
        {
            OJobOfferPersonVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OJobOfferPerson>().Where(x => x.OPersonId == OPersonId && x.OJobOfferId == OJobOfferId).Select(x => new OJobOfferPersonVMR
                {
                    OPersonId = x.OPersonId,
                    OJobOfferId = x.OJobOfferId,
                    ApplicationDate = x.ApplicationDate,
                    Status = x.Status
                }).FirstOrDefault();
            }

            return result;
        }

        public static (long OPersonId, long OJobOfferId) Create(OJobOfferPerson item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OJobOfferPerson>().Add(item);
                db.SaveChanges();
            }
            return (item.OPersonId, item.OJobOfferId);
        }

        public static void Update(OJobOfferPersonVMR item)
        {
            using (var db = MyDbConnection.Create())
            {
                var updateItem = db.Set<OJobOfferPerson>().Find(item.OPersonId, item.OJobOfferId);
                if (updateItem == null) return;

                updateItem.ApplicationDate = item.ApplicationDate;
                updateItem.Status = item.Status;

                db.Entry(updateItem).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
        }

        public static void Delete(long OPersonId, long OJobOfferId)
        {
            using (var db = MyDbConnection.Create())
            {
                Delete(db, OPersonId, OJobOfferId);
            }
        }

        public static void Delete(MyDbConnection db, long OPersonId, long OJobOfferId)
        {
            var item = db.Set<OJobOfferPerson>().Find(OPersonId, OJobOfferId);
            if(item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}
