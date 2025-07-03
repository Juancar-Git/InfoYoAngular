using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class WFtrLinksSectionColItemVMR
    {
        public long Id { get; set; }
        public string Title { get; set; }
        public string TitleHoverDesc { get; set; }
        public string ItemPath { get; set; }
        public long WFtrLinksSectionColId { get; set; }

        public virtual WFtrLinksSectionColVMR WFtrLinksSectionCol { get; set; }
    }
}
