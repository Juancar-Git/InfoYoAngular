﻿using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace Data.DAL
{
    public class OPersonDAL
    {
        //Además del searchText, hay que añadir otro campo de búsqueda por ubicación
        public static PaginatedList<OPersonVMR> ReadAll(int quantity, int page, string searchText)
        {
            PaginatedList<OPersonVMR> result = new PaginatedList<OPersonVMR>();

            using (var db = MyDbConnection.Create())
            {
                var query = db.Set<OPerson>().Select(x => new OPersonVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    FirstSurname = x.FirstSurname,
                    SecondSurname = x.SecondSurname,
                    Birthdate = x.Birthdate,
                    DocumentType = x.DocumentType,
                    Gender = x.Gender,
                    Country = x.Country,
                    PostCode = x.PostCode,
                    Province = x.Province,
                    Town = x.Town,
                    Address = x.Address,
                    MovilPhone = x.MovilPhone,
                    LandlinePhone = x.LandlinePhone,
                    ForeignPhone = x.ForeignPhone,
                    PreferPhone = x.PreferPhone,
                    WebSite = x.WebSite,
                    OpenToWork = x.OpenToWork,
                    CreationDate = x.CreationDate,
                    Closed = x.Closed
                });

                if (!string.IsNullOrEmpty(searchText))
                {
                    query = query.Where(x => 
                    x.Name.Contains(searchText) ||
                    x.FirstSurname.Contains(searchText) ||
                    x.SecondSurname.Contains(searchText) ||
                    x.MovilPhone.Contains(searchText)
                    );
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
        

        public static OPersonVMR ReadOne(long id)
        {
            OPersonVMR result = new OPersonVMR();
            long aUserId;

            using(var db = MyDbConnection.Create())
            {
                result = db.Set<OPerson>().Where(x => x.Id == id).Select(x => new OPersonVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    FirstSurname = x.FirstSurname,
                    SecondSurname = x.SecondSurname,
                    Birthdate = x.Birthdate,
                    DocumentType = x.DocumentType,
                    Gender = x.Gender,
                    Country = x.Country,
                    PostCode = x.PostCode,
                    Province = x.Province,
                    Town = x.Town,
                    Address = x.Address,
                    MovilPhone = x.MovilPhone,
                    LandlinePhone = x.LandlinePhone,
                    ForeignPhone = x.ForeignPhone,
                    PreferPhone = x.PreferPhone,
                    WebSite = x.WebSite,
                    OpenToWork = x.OpenToWork,
                    CreationDate = x.CreationDate,
                    Closed = x.Closed
                }).FirstOrDefault();

                aUserId = db.Set<OPerson>().Where(x => x.Id == id).Select(x => x.AUserId).FirstOrDefault();

                result.AUserEmail = AUserDAL.ReadEmail(aUserId);
                result.OCnyComplaintOpinion = OCnyComplaintOpinionDAL.ReadByPersonId(db, result.Id);
                result.OCompanyOpinion = OCompanyOpinionDAL.ReadByPersonId(db, result.Id); ;
                result.OCvVisit = OCvVisitDAL.ReadByPersonId(db, result.Id);
                result.OJobOfferPerson = OJobOfferPersonDAL.ReadByPersonId(db, result.Id);
            }

            return result;
        }
        

        public static long Create(OPerson item)
        {
            using (var db = MyDbConnection.Create())
            {
                db.Set<OPerson>().Add(item);
                db.SaveChanges();
            }

            return item.Id;
        }

        public static void Update(OPersonVMR item)
        {
            using (var db = MyDbConnection.Create())
            {
                var itemUpdate = db.Set<OPerson>().Find(item.Id);
                if (itemUpdate == null) return;

                itemUpdate.Name = item.Name;
                itemUpdate.FirstSurname = item.FirstSurname;
                itemUpdate.SecondSurname = item.SecondSurname;
                itemUpdate.Birthdate = item.Birthdate;
                itemUpdate.DocumentType = item.DocumentType;
                itemUpdate.Gender = item.Gender;
                itemUpdate.Country = item.Country;
                itemUpdate.PostCode = item.PostCode;
                itemUpdate.Province = item.Province;
                itemUpdate.Town = item.Town;
                itemUpdate.Address = item.Address;
                itemUpdate.MovilPhone = item.MovilPhone;
                itemUpdate.LandlinePhone = item.LandlinePhone;
                itemUpdate.ForeignPhone = item.ForeignPhone;
                itemUpdate.PreferPhone = item.PreferPhone;
                itemUpdate.WebSite = item.WebSite;
                itemUpdate.OpenToWork = item.OpenToWork;
                itemUpdate.CreationDate = item.CreationDate;
                itemUpdate.Closed = item.Closed;

                db.Entry(itemUpdate).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }

        }

        public static void Delete(long id)
        {
            using (var db = MyDbConnection.Create())
            {
                var item = db.Set<OPerson>().Find(id);
                if (item == null) return;

                //Delete OCompanyInfo List
                var queryOCompanyInfo = db.Set<OCnyComplaintOpinion>().Where(x => x.OPersonId == id);
                foreach (var itemQ in queryOCompanyInfo) { OCnyComplaintOpinionDAL.Delete(db, itemQ.OCompanyOpinionId, itemQ.OPersonId); }

                //Delete OCompanyOpinion List
                var queryOCompanyOpinion = db.Set<OCompanyOpinion>().Where(x => x.OPersonId == id);
                foreach (var itemQ in queryOCompanyOpinion) { OCompanyOpinionDAL.Delete(db, itemQ.Id); }

                //Delete OCvVisit List
                var queryOCvVisit = db.Set<OCvVisit>().Where(x => x.OPersonId == id);
                foreach (var itemQ in queryOCvVisit) { OCvVisitDAL.Delete(db, itemQ.Id); }

                //Delete OCompanyJobOffer List
                var queryOCompanyJobOffer = db.Set<OJobOfferPerson>().Where(x => x.OPersonId == id);
                foreach (var itemQ in queryOCompanyJobOffer) { OJobOfferPersonDAL.Delete(db, itemQ.OPersonId, itemQ.OJobOfferId); }

                //Delete OPerson Object
                db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();
            }
        }
    }
}
