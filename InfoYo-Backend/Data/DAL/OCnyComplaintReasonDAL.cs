using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class OCnyComplaintReasonDAL
    {

        public static List<OCnyComplaintReasonVMR> ReadAll(long id)
        {
            List<OCnyComplaintReasonVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OCnyComplaintReason>().Where(x => x.Id == id).Select(x => new OCnyComplaintReasonVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).ToList();
            }

            return result;
        }

        public static OCnyComplaintReasonVMR ReadOne(long id)
        {
            OCnyComplaintReasonVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OCnyComplaintReason>().Where(x => x.Id == id).Select(x => new OCnyComplaintReasonVMR
                {
                    Id = x.Id,
                    Name = x.Name
                }).FirstOrDefault();
            }

            return result;
        }

        public static long Create(OCnyComplaintReason item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OCnyComplaintReason>().Add(item);
                db.SaveChanges();
            }
            return item.Id;
        }

        public static void Update(OCnyComplaintReason item)
        {
            using (var db = MyDbConnection.Create())
            {
                var updateItem = db.Set<OCnyComplaintReason>().Find(item.Id);
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
            var item = db.Set<OCnyComplaintReason>().Find(id);
            if (item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}
