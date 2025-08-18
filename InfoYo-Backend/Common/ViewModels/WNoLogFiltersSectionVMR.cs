using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class WNoLogFiltersSectionVMR
    {
        public long Id { get; set; }
        public string Title { get; set; }
        public string MoreFiltersBtn { get; set; }


        public List<WNoLogFiltersItemVMR> WNoLogFiltersItems { get; set; }
    }
}
