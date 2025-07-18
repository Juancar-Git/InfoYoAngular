using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WJobsPageWithFiltDAL
    {
        public static WJobsPageWithFiltVMR ReadOne(long id)
        {
            WJobsPageWithFiltVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WJobsPageWithFilt>().Where(x => x.Id == id).Select(x => new WJobsPageWithFiltVMR
                {
                    Id = x.Id,
                    TitleSearchTextField = x.TitleSearchTextField,
                    VoidSearchTextField = x.VoidSearchTextField,
                    TitleLocationField = x.TitleLocationField,
                    VoidLocationField = x.VoidLocationField,
                    NonVariableOffersQtyText = x.NonVariableOffersQtyText,
                    OrderByOffersText = x.OrderByOffersText,
                    OrderByOffersInfoText = x.OrderByOffersInfoText,
                    NextBtn = x.NextBtn,
                    PreviousBtn = x.PreviousBtn,
                    NewSearchBtn = x.NewSearchBtn,
                    RelationOffersTxt = x.RelationOffersTxt,
                    RelationCompaniesTxt = x.RelationCompaniesTxt
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
