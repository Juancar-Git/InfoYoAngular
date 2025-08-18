using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class WNoLogCitiesSectionVMR
    {
        public long Id { get; set; }
        public string Title { get; set; }
        public string MoreCitiesBtn { get; set; }

        public List<WNoLogCitiesItemVMR> WNoLogCitiesItems { get; set; }
    }
}
