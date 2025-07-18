using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class WFtrLinksSectionColVMR
    {
        public long Id { get; set; }
        public string Title { get; set; }

        public List<WFtrLinksSectionColItemVMR> WFtrLinksSectionColItem { get; set; } = new List<WFtrLinksSectionColItemVMR>();
    }
}
