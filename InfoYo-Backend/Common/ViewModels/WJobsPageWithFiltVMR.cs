using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class WJobsPageWithFiltVMR
    {
        public long Id { get; set; }
        public string TitleSearchTextField { get; set; }
        public string VoidSearchTextField { get; set; }
        public string TitleLocationField { get; set; }
        public string VoidLocationField { get; set; }
        public string NonVariableOffersQtyText { get; set; }
        public string OrderByOffersText { get; set; }
        public string OrderByOffersInfoText { get; set; }
        public string NextBtn { get; set; }
        public string PreviousBtn { get; set; }
        public string NewSearchBtn { get; set; }
        public string RelationOffersTxt { get; set; }
        public string RelationCompaniesTxt { get; set; }
    }
}
