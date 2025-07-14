using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WMyOffersPageDAL
    {
        public static WMyOffersPageVMR ReadOne(long Id)
        {
            WMyOffersPageVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WMyOffersPage>().Where(x => x.Id == Id).Select(x => new WMyOffersPageVMR
                {
                    Id = x.Id,
                    HeadTitle = x.HeadTitle,
                    Title = x.Title,
                    HideBtn = x.HideBtn,
                    CandidacyTab = x.CandidacyTab,
                    EmptyCandidacyTitle = x.EmptyCandidacyTitle,
                    EmptyCandidacyDesc = x.EmptyCandidacyDesc,
                    EmptyCandidacyImg = x.EmptyCandidacyImg,
                    SavedTab = x.SavedTab,
                    EmptySavedTitle = x.EmptySavedTitle,
                    EmptySavedDesc = x.EmptySavedDesc,
                    EmptySavedImg = x.EmptySavedImg,
                    MoreOptionsTitle = x.MoreOptionsTitle,
                    NextBtn = x.NextBtn,
                    PreviousBtn = x.PreviousBtn
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
