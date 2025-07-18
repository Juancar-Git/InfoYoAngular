using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WPersonalDataPageDAL
    {
        public static WPersonalDataPageVMR ReadOne(long id)
        {
            WPersonalDataPageVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WPersonalDataPage>().Where(x => x.Id == id).Select(x => new WPersonalDataPageVMR
                {
                    Id = x.Id,
                    HeadTitle = x.HeadTitle,
                    Title = x.Title,
                    AboutMeTtl = x.AboutMeTtl,
                    Photo = x.Photo,
                    PhotoBtn = x.PhotoBtn,
                    Name = x.Name,
                    FirstSurName = x.FirstSurName,
                    SecondoSurName = x.SecondoSurName,
                    DocType = x.DocType,
                    DocNum = x.DocNum,
                    Gender = x.Gender,
                    ResideceTtl = x.ResideceTtl,
                    Country = x.Country,
                    PostCode = x.PostCode,
                    Province = x.Province,
                    Town = x.Town,
                    Address = x.Address,
                    AccessTtl = x.AccessTtl,
                    Email = x.Email,
                    ModEmailTxt = x.ModEmailTxt,
                    PhoneTtl = x.PhoneTtl,
                    MovilPhone = x.MovilPhone,
                    LandlinePhone = x.LandlinePhone,
                    ForeignPhone = x.ForeignPhone,
                    Preferential = x.Preferential,
                    WebTtl = x.WebTtl,
                    WebDescTxt = x.WebDescTxt,
                    WebUrl = x.WebUrl,
                    AddWeb = x.AddWeb,
                    OptionalTxt = x.OptionalTxt,
                    SaveBtn = x.SaveBtn,
                    CancelBtn = x.CancelBtn
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
