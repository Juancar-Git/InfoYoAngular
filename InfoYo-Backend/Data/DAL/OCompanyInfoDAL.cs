using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class OCompanyInfoDAL
    {
        //ESTE OBJETO SOLO TIENE SENTIDO SI VA ENLAZADO A UN OBJETO COMPANY
        //ES UNA RELACIÓN DE UNO A UNO POR LO QUE EN EL OTRO LADO NO DEBERÍA HABER UNA LISTA --> CAMBIAR
        public static List<OCompanyInfoVMR> ReadByCompanyId(long id)
        {
            using (var db = MyDbConnection.Create())
            {
                return ReadByCompanyId(db, id);
            }
        }
        public static List<OCompanyInfoVMR> ReadByCompanyId(MyDbConnection db, long id)
        {
            return db.Set<OCompanyInfo>().Where(x => x.OCompanyId == id).Select(x => new OCompanyInfoVMR
            {
                Id = x.Id,
                Description = x.Description,
                YtVideoUrl = x.YtVideoUrl,
                FirstImgUrl = x.FirstImgUrl,
                SecondImgUrl = x.SecondImgUrl,
                OCompanyId = x.OCompanyId
            }).ToList();
        }
        //ESTE OBJETO SOLO TIENE SENTIDO SI VA ENLAZADO A UN OBJETO COMPANY
        //ES UNA RELACIÓN DE UNO A UNO POR LO QUE EN EL OTRO LADO NO DEBERÍA HABER UNA LISTA --> CAMBIAR
        public static OCompanyInfoVMR ReadOne(long companyId)
        {
            OCompanyInfoVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OCompanyInfoVMR>().Where(x => x.OCompanyId == companyId).Select(x => new OCompanyInfoVMR
                {
                    Id = x.Id,
                    Description = x.Description,
                    YtVideoUrl = x.YtVideoUrl,
                    FirstImgUrl = x.FirstImgUrl,
                    SecondImgUrl = x.SecondImgUrl,
                    OCompanyId = x.OCompanyId
                }).FirstOrDefault();
            }
            return result;
        }

        public static long Create(OCompanyInfo item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OCompanyInfo>().Add(item);
                db.SaveChanges();
            }
            return item.Id;
        }

        public static void Update(OCompanyInfoVMR item)
        {
            using (var db = MyDbConnection.Create())
            {
                var updateItem = db.Set<OCompanyInfo>().Find(item.Id);
                if (updateItem == null) return;

                updateItem.Description = item.Description;
                updateItem.YtVideoUrl = item.YtVideoUrl;
                updateItem.FirstImgUrl = item.FirstImgUrl;
                updateItem.SecondImgUrl = item.SecondImgUrl;
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
            var item = db.Set<OCompanyInfo>().Find(id);
            if(item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}