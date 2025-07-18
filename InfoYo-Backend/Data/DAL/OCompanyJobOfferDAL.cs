using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{

    public class OCompanyJobOfferDAL
    {
        public static List<OCompanyJobOfferVMR> ReadByCompanyId(long id)
        {
            using (var db = MyDbConnection.Create())
            {
                return ReadByCompanyId(db, id);
            }
        }

        public static List<OCompanyJobOfferVMR> ReadByCompanyId(MyDbConnection db, long id)
        {

            return db.Set<OCompanyJobOffer>().Where(x => x.OCompanyId == id).Select(x => new OCompanyJobOfferVMR
            {
                Id = x.Id,
                Title = x.Title,
                Description = x.Description,
                CreationDate = x.CreationDate,
                PublicationDate = x.PublicationDate,
                Country = x.Country,
                Province = x.Province,
                Town = x.Town,
                LocationType = x.LocationType,
                Salary = x.Salary,
                MinExperienceYears = x.MinExperienceYears,
                MinRequirements = x.MinRequirements,
                OCompanyId = x.OCompanyId,
                OWorkDayTypeId = x.OWorkDayTypeId,
                OContractTypeId = x.OContractTypeId
            }).ToList();
        }

        public static OCompanyJobOfferVMR ReadOne(long id)
        {
            OCompanyJobOfferVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OCompanyJobOfferVMR>().Where(x => x.Id == id).Select(x => new OCompanyJobOfferVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    Description = x.Description,
                    CreationDate = x.CreationDate,
                    PublicationDate = x.PublicationDate,
                    Country = x.Country,
                    Province = x.Province,
                    Town = x.Town,
                    LocationType = x.LocationType,
                    Salary = x.Salary,
                    MinExperienceYears = x.MinExperienceYears,
                    MinRequirements = x.MinRequirements,
                    OCompanyId = x.OCompanyId,
                    OWorkDayTypeId = x.OWorkDayTypeId,
                    OContractTypeId = x.OContractTypeId
                }).FirstOrDefault();
            }

            return result;
        }

        public static long Create(OCompanyJobOffer item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OCompanyJobOffer>().Add(item);
                db.SaveChanges();
            }
            return item.Id;
        }

        public static void Update(OCompanyJobOffer item)
        {
            using (var db = MyDbConnection.Create())
            {
                var updateItem = db.Set<OCompanyJobOffer>().Find(item.Id);
                if (updateItem == null) return;

                updateItem.Title = item.Title;
                updateItem.Description = item.Description;
                updateItem.CreationDate = item.CreationDate;
                updateItem.PublicationDate = item.PublicationDate;
                updateItem.Country = item.Country;
                updateItem.Province = item.Province;
                updateItem.Town = item.Town;
                updateItem.LocationType = item.LocationType;
                updateItem.Salary = item.Salary;
                updateItem.MinExperienceYears = item.MinExperienceYears;
                updateItem.MinRequirements = item.MinRequirements;
                updateItem.OCompanyId = item.OCompanyId;
                updateItem.OWorkDayTypeId = item.OWorkDayTypeId;
                updateItem.OContractTypeId = item.OContractTypeId;

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
            var item = db.Set<OCompanyJobOffer>().Find(id);
            if (item == null) return;

            db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
            db.SaveChanges();
        }
    }
}
