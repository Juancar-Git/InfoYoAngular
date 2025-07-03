using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class WProfileVisitsPageVMR
    {
        public long Id { get; set; }
        public string HeadTitle { get; set; }
        public string Title { get; set; }
        public string Subtititle { get; set; }
        public string Description { get; set; }
        public string HourItemText { get; set; }
        public string SeeCompanyItemBtn { get; set; }
        public string SeeCompanyBaseItemUrl { get; set; }
        public string EmptyDefaultTitle { get; set; }
        public string EmptyDefaultDesc { get; set; }
        public string EmptyDefaultImg { get; set; }
    }
}
