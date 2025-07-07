using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class OCompanyDAL
    {
        public static PaginatedList<OCompanyVMR> ReadAll()
        {
            PaginatedList<OCompanyVMR> result = new PaginatedList<OCompanyVMR> ();

            using(var db = MyDbConnection.Create())
            {
                var query = db.Set<OCompany>().Select(x => new OCompanyVMR
                {
                    Id = x.Id,
                    CompanyName = x.CompanyName,
                    RegisteredName = x.RegisteredName,
                    NIF = x.NIF,
                    TaxAddress = x.TaxAddress,
                    TaxCountry = x.TaxCountry,
                    TaxProvince = x.TaxProvince,
                    TaxTown = x.TaxTown,
                    TaxPostCode = x.TaxPostCode,
                    RegOffiAddress = x.RegOffiAddress,
                    RegOffiCountry = x.RegOffiCountry,
                    RegOffiProvince = x.RegOffiProvince,
                    RegOffiTown = x.RegOffiTown,
                    RegOffiPostCode = x.RegOffiPostCode,
                    LaborSector = x.LaborSector,
                    WorkersNum = x.WorkersNum,
                    InternalName = x.InternalName,
                    Description = x.Description,
                    MainEmail = x.MainEmail,
                    SecondaryEmail = x.SecondaryEmail,
                    MovilPhone = x.MovilPhone,
                    LandlinePhone = x.LandlinePhone,
                    ForeignPhone = x.ForeignPhone,
                    WebSite = x.WebSite,
                    LogoImgPath = x.LogoImgPath,
                    BgImgPath = x.BgImgPath,
                    MiniImgPath = x.MiniImgPath,
                    CompanyBgImgPath = x.CompanyBgImgPath,
                    MiniText = x.MiniText
                });
            }

            return result;
        }

        public static OCompanyVMR ReadOne(long Id)
        {
            OCompanyVMR result = new OCompanyVMR();

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<OCompany>().Where(x => x.Id == Id).Select(x => new OCompanyVMR
                {
                    Id = x.Id,
                    CompanyName = x.CompanyName,
                    RegisteredName = x.RegisteredName,
                    NIF = x.NIF,
                    TaxAddress = x.TaxAddress,
                    TaxCountry = x.TaxCountry,
                    TaxProvince = x.TaxProvince,
                    TaxTown = x.TaxTown,
                    TaxPostCode = x.TaxPostCode,
                    RegOffiAddress = x.RegOffiAddress,
                    RegOffiCountry = x.RegOffiCountry,
                    RegOffiProvince = x.RegOffiProvince,
                    RegOffiTown = x.RegOffiTown,
                    RegOffiPostCode = x.RegOffiPostCode,
                    LaborSector = x.LaborSector,
                    WorkersNum = x.WorkersNum,
                    InternalName = x.InternalName,
                    Description = x.Description,
                    MainEmail = x.MainEmail,
                    SecondaryEmail = x.SecondaryEmail,
                    MovilPhone = x.MovilPhone,
                    LandlinePhone = x.LandlinePhone,
                    ForeignPhone = x.ForeignPhone,
                    WebSite = x.WebSite,
                    LogoImgPath = x.LogoImgPath,
                    BgImgPath = x.BgImgPath,
                    MiniImgPath = x.MiniImgPath,
                    CompanyBgImgPath = x.CompanyBgImgPath,
                    MiniText = x.MiniText
                }).FirstOrDefault();

                if (result == null)
                    return null;

                result.OCompanyInfo = OCompanyInfoDAL.ReadByCompanyId(db, result.Id);
                result.OCompanyJobOffer = OCompanyJobOfferDAL.ReadByCompanyId(db, result.Id);
                result.OCompanyOpinion = OCompanyOpinionDAL.ReadByCompanyId(db, result.Id);
                result.OCvVisit = OCvVisitDAL.ReadByCompanyId(db, result.Id);
            }
            return result;
        } 

        public static long Create(OCompany item)
        {
            using(var db = MyDbConnection.Create())
            {
                db.Set<OCompany>().Add(item);
                db.SaveChanges();
            }
            return item.Id;
        }
        public void Update(OCompanyVMR item)
        {
            using(var db = MyDbConnection.Create())
            {
                var itemUpdate = db.Set<OCompany>().Find(item.Id);

                itemUpdate.CompanyName = item.CompanyName;
                itemUpdate.RegisteredName = item.RegisteredName;
                itemUpdate.NIF = item.NIF;
                itemUpdate.TaxAddress = item.TaxAddress;
                itemUpdate.TaxCountry = item.TaxCountry;
                itemUpdate.TaxProvince = item.TaxProvince;
                itemUpdate.TaxTown = item.TaxTown;
                itemUpdate.TaxPostCode = item.TaxPostCode;
                itemUpdate.RegOffiAddress = item.RegOffiAddress;
                itemUpdate.RegOffiCountry = item.RegOffiCountry;
                itemUpdate.RegOffiProvince = item.RegOffiProvince;
                itemUpdate.RegOffiTown = item.RegOffiTown;
                itemUpdate.RegOffiPostCode = item.RegOffiPostCode;
                itemUpdate.LaborSector = item.LaborSector;
                itemUpdate.WorkersNum = item.WorkersNum;
                itemUpdate.InternalName = item.InternalName;
                itemUpdate.Description = item.Description;
                itemUpdate.MainEmail = item.MainEmail;
                itemUpdate.SecondaryEmail = item.SecondaryEmail;
                itemUpdate.MovilPhone = item.MovilPhone;
                itemUpdate.LandlinePhone = item.LandlinePhone;
                itemUpdate.ForeignPhone = item.ForeignPhone;
                itemUpdate.WebSite = item.WebSite;
                itemUpdate.LogoImgPath = item.LogoImgPath;
                itemUpdate.BgImgPath = item.BgImgPath;
                itemUpdate.MiniImgPath = item.MiniImgPath;
                itemUpdate.CompanyBgImgPath = item.CompanyBgImgPath;
                itemUpdate.MiniText = item.MiniText;

                db.Entry(itemUpdate).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
        }

        public void Delete(long Id)
        {
            using(var db = MyDbConnection.Create())
            {
                var item = db.Set<OCompany>().Find(Id);

                /*
                 * -- NO TENGO CLARO SI HAY QUE ELIMINARLO DESDE AQUI O DESDE CADA CLASE DAL, YA QUE ESTOS A SU VEZ TIENEN OBJETOS QUE ELIMINAR
                 * 
                var queryOCompanyInfo = db.Set<OCompanyInfo>().Where(x => x.OCompanyId == Id);
                if (queryOCompanyInfo != null)
                {
                    foreach (var itemQ in queryOCompanyInfo.ToList())
                    {
                        db.Entry(itemQ).State = System.Data.Entity.EntityState.Deleted;
                        db.SaveChanges();
                    }
                } 

                var queryOCompanyJobOffer = db.Set<OCompanyJobOffer>().Where(x => x.OCompanyId == Id);
                if (queryOCompanyJobOffer != null)
                {
                    foreach (var itemQ in queryOCompanyJobOffer.ToList())
                    {
                        db.Entry(itemQ).State = System.Data.Entity.EntityState.Deleted;
                        db.SaveChanges();
                    }
                }

                var queryOCompanyOpinion = db.Set<OCompanyOpinion>().Where(x => x.OCompanyId == Id);
                if (queryOCompanyOpinion != null)
                {
                    foreach (var itemQ in queryOCompanyOpinion.ToList())
                    {
                        db.Entry(itemQ).State = System.Data.Entity.EntityState.Deleted;
                        db.SaveChanges();
                    }
                }

                var queryOCvVisit = db.Set<OCvVisit>().Where(x => x.OCompanyId == Id);
                if (queryOCvVisit != null)
                {
                    foreach (var itemQ in queryOCvVisit.ToList())
                    {
                        db.Entry(itemQ).State = System.Data.Entity.EntityState.Deleted;
                        db.SaveChanges();
                    }
                }
                */
                db.Entry(item).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();
            }
        }
    }
}
