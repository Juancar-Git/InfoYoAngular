using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class WNoLogCompanySectionVMR
    {
        public long Id { get; set; }
        public string Title { get; set; }
        public string ShowMoreTextBtn { get; set; }
        public string DefaultMiniIconImgPath { get; set; }
        public string DefaultMiniImgPath { get; set; }
        public string DefaultOffersQtyText { get; set; }

        public List<WNoLogCompanyItemVMR> WNoLogCompanyItems { get; set; }
        public List<WNoLogCompanyPublicityItemVMR> WNoLogCompanyPublicityItems { get; set; }
    }
}
