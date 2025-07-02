using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class AUserDAL
    {
        //Para Usuario Administrador que pueda gesitionar las cuentas
        /*
        public static PaginatedList<AUserVMR> ReadAll(int quantity, int page, string searchText)
        {
            PaginatedList<AUserVMR> result = new PaginatedList<AUserVMR>();

            using (var db = MyDbConnection.Create())
            {
                var query = db.Set<AUser>().Select(x => new AUserVMR
                {
                    Id = x.Id,
                    Email = x.Email,
                    PasswordHash = x.PasswordHash,
                    Rol = x.Rol,
                    Status = x.Status,
                    CreationDate = x.CreationDate
                });

                if (!string.IsNullOrEmpty(searchText))
                {
                    query = query.Where(x => x.Email.Contains(searchText));
                }

                result.totalQuantity = query.Count();
                result.elements = query
                    .OrderBy(x => x.Id)
                    .Skip(page - quantity)
                    .Take(quantity)
                    .ToList();
            }
            
               
            return result;
        }
        

        public static AUserVMR ReadOne(long Id)
        {
            AUserVMR result = new AUserVMR();

            using(var db = MyDbConnection.Create())
            {
                result = db.Set<AUser>().Where(x => x.Id == Id).Select(x => new AUserVMR
                {
                    Id = x.Id,
                    Email = x.Email,
                    PasswordHash = x.PasswordHash,
                    Rol = x.Rol,
                    Status = x.Status,
                    CreationDate = x.CreationDate
                }).FirstOrDefault();

            }

            return result;
        }
        */

        public static long Create(AUser item)
        {
            using(var db = MyDbConnection.Create())
            {
                db.Set<AUser>().Add(item);
                db.SaveChanges();
            }

            return item.Id;
        }

        public static void Update(AUserVMR item)
        {
            using(var db = MyDbConnection.Create())
            {
                var itemUpdate = db.Set<AUser>().Find(item.Id);

                itemUpdate.Id = item.Id;
                itemUpdate.Email = item.Email;
                itemUpdate.PasswordHash = item.PasswordHash;

                db.Entry(itemUpdate).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }

        }

        public static void Delete(long Id)
        {
            using(var db = MyDbConnection.Create())
            {
                var item = db.Set<AUser>().Find(Id);

                db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();
            }
        }
    }
}
