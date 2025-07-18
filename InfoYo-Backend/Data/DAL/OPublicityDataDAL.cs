using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class OPublicityDataDAL
    {
        public static List<OPublicityDataVMR> ReadAll(long id)
        {
            List<OPublicityDataVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OPublicityData>().Where(x => x.Id == id).Select(x => new OPublicityDataVMR
                {
                    Id = x.Id,
                    PublicityBgImgPath = x.PublicityBgImgPath,
                    LinkUrl = x.LinkUrl
                }).ToList();
            }

            return result;
        }

        public static OPublicityDataVMR ReadOne(long id)
        {
            OPublicityDataVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OPublicityData>().Where(x => x.Id == id).Select(x => new OPublicityDataVMR
                {
                    Id = x.Id,
                    PublicityBgImgPath = x.PublicityBgImgPath,
                    LinkUrl = x.LinkUrl
                }).FirstOrDefault();
            }

            return result;
        }

        public static long Create(OPublicityData item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OPublicityData>().Add(item);
                db.SaveChanges();
            }
            return item.Id;
        }

        public static void Update(OPublicityData item)
        {
            using (var db = MyDbConnection.Create())
            {
                var updateItem = db.Set<OPublicityData>().Find(item.Id);
                if (updateItem == null) return;

                updateItem.PublicityBgImgPath = item.PublicityBgImgPath;
                updateItem.LinkUrl = item.LinkUrl;

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
            var item = db.Set<OPublicityData>().Find(id);
            if (item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}
