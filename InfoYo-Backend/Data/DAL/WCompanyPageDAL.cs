using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WCompanyPageDAL
    {
        public static List<WCompanyPageVMR> ReadAll(long Id)
        {
            List<WCompanyPageVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WCompanyPage>().Where(x => x.Id == Id).Select(x => new WCompanyPageVMR
                {
                    Id = x.Id,
                    HeadTitle = x.HeadTitle,
                    EmployeesText = x.EmployeesText,
                    OpinionsText = x.OpinionsText,
                    InfoTabTitle = x.InfoTabTitle,
                    InfoSectionTitle = x.InfoSectionTitle,
                    InfoSeeMore = x.InfoSeeMore,
                    OffersTabTitle = x.OffersTabTitle,
                    OffersSectionTitle = x.OffersSectionTitle,
                    NewLabel = x.NewLabel,
                    PostAgainLabel = x.PostAgainLabel,
                    AgoTxt = x.AgoTxt,
                    NoDataSalaryTxt = x.NoDataSalaryTxt,
                    OpinionsTabTitle = x.OpinionsTabTitle,
                    OpinionsSectionTitle = x.OpinionsSectionTitle,
                    ComplaintBnt = x.ComplaintBnt,
                    PreviousBtn = x.PreviousBtn,
                    NextBtn = x.NextBtn
                }).ToList();
            }

            return result;
        }

        public static WCompanyPageVMR ReadOne(long Id)
        {
            WCompanyPageVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WCompanyPage>().Where(x => x.Id == Id).Select(x => new WCompanyPageVMR
                {
                    Id = x.Id,
                    HeadTitle = x.HeadTitle,
                    EmployeesText = x.EmployeesText,
                    OpinionsText = x.OpinionsText,
                    InfoTabTitle = x.InfoTabTitle,
                    InfoSectionTitle = x.InfoSectionTitle,
                    InfoSeeMore = x.InfoSeeMore,
                    OffersTabTitle = x.OffersTabTitle,
                    OffersSectionTitle = x.OffersSectionTitle,
                    NewLabel = x.NewLabel,
                    PostAgainLabel = x.PostAgainLabel,
                    AgoTxt = x.AgoTxt,
                    NoDataSalaryTxt = x.NoDataSalaryTxt,
                    OpinionsTabTitle = x.OpinionsTabTitle,
                    OpinionsSectionTitle = x.OpinionsSectionTitle,
                    ComplaintBnt = x.ComplaintBnt,
                    PreviousBtn = x.PreviousBtn,
                    NextBtn = x.NextBtn
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
