using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WJobsPageNoFiltDAL
    {
        public static List<WJobsPageNoFiltVMR> ReadAll(long Id)
        {
            List<WJobsPageNoFiltVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WJobsPageNoFilt>().Where(x => x.Id == Id).Select(x => new WJobsPageNoFiltVMR
                {
                    Id = x.Id,
                    HeadTitle = x.HeadTitle,
                    Title = x.Title,
                    VoidSearchTextField = x.VoidSearchTextField,
                    VoidLocationField = x.VoidLocationField,
                    SearchBtn = x.SearchBtn,
                    OffersTitle = x.OffersTitle,
                    OffersBaseUrl = x.OffersBaseUrl,
                    CandidacyTitle = x.CandidacyTitle,
                    CandidacyComment = x.CandidacyComment,
                    CandidacyLinkText = x.CandidacyLinkText,
                    CandidacyLinkUrl = x.CandidacyLinkUrl,
                    PreferencesTitle = x.PreferencesTitle,
                    PrefBtn = x.PrefBtn,
                    PrefBtnUrl = x.PrefBtnUrl,
                    PrefEditBtn = x.PrefEditBtn,
                    PrefEditBtnUrl = x.PrefEditBtnUrl,
                    PrefMoreBtn = x.PrefMoreBtn,
                    PrefMoreBtnUrl = x.PrefMoreBtnUrl,
                    SaveItemIcon = x.SaveItemIcon,
                    YourOffersTitle = x.YourOffersTitle,
                    YourOffersSubTitle = x.YourOffersSubTitle
                }).ToList();
            }

            return result;
        }

        public static WJobsPageNoFiltVMR ReadOne(long Id)
        {
            WJobsPageNoFiltVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WJobsPageNoFilt>().Where(x => x.Id == Id).Select(x => new WJobsPageNoFiltVMR
                {
                    Id = x.Id,
                    HeadTitle = x.HeadTitle,
                    Title = x.Title,
                    VoidSearchTextField = x.VoidSearchTextField,
                    VoidLocationField = x.VoidLocationField,
                    SearchBtn = x.SearchBtn,
                    OffersTitle = x.OffersTitle,
                    OffersBaseUrl = x.OffersBaseUrl,
                    CandidacyTitle = x.CandidacyTitle,
                    CandidacyComment = x.CandidacyComment,
                    CandidacyLinkText = x.CandidacyLinkText,
                    CandidacyLinkUrl = x.CandidacyLinkUrl,
                    PreferencesTitle = x.PreferencesTitle,
                    PrefBtn = x.PrefBtn,
                    PrefBtnUrl = x.PrefBtnUrl,
                    PrefEditBtn = x.PrefEditBtn,
                    PrefEditBtnUrl = x.PrefEditBtnUrl,
                    PrefMoreBtn = x.PrefMoreBtn,
                    PrefMoreBtnUrl = x.PrefMoreBtnUrl,
                    SaveItemIcon = x.SaveItemIcon,
                    YourOffersTitle = x.YourOffersTitle,
                    YourOffersSubTitle = x.YourOffersSubTitle
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
