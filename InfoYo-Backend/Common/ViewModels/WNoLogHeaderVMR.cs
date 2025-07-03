using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class WNoLogHeaderVMR
    {
        public long Id { get; set; }
        public string HeadTitle { get; set; }
        public string Title { get; set; }
        public string HeadBgImgPath { get; set; }
        public string CompanyAccessBtn { get; set; }
        public string CompanyAccessBtnUrl { get; set; }
        public string CandidateAccessBtn { get; set; }
        public string CandidateAccessBtnUrl { get; set; }
        public string BlockFilterTitle { get; set; }
        public string SeachFilterTitle { get; set; }
        public string LocationFilterTitle { get; set; }
        public string SearchBtn { get; set; }
        public string SearchBtnHoverDesc { get; set; }
    }
}
