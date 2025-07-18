using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WNoLogCompanySectionDAL
    {
        public static List<WNoLogCompanySectionVMR> ReadAll()
        {
            List<WNoLogCompanySectionVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogCompanySection>().Select(x => new WNoLogCompanySectionVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    ShowMoreTextBtn = x.ShowMoreTextBtn,
                    DefaultMiniIconImgPath = x.DefaultMiniIconImgPath,
                    DefaultMiniImgPath = x.DefaultMiniImgPath,
                    DefaultOffersQtyText = x.DefaultOffersQtyText
                }).ToList();
            }

            return result;
        }

        public static WNoLogCompanySectionVMR ReadOne(long id)
        {
            WNoLogCompanySectionVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogCompanySection>().Where(x => x.Id == id).Select(x => new WNoLogCompanySectionVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    ShowMoreTextBtn = x.ShowMoreTextBtn,
                    DefaultMiniIconImgPath = x.DefaultMiniIconImgPath,
                    DefaultMiniImgPath = x.DefaultMiniImgPath,
                    DefaultOffersQtyText = x.DefaultOffersQtyText
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
