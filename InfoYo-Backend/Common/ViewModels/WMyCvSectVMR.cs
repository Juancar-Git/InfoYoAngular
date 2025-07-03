using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class WMyCvSectVMR
    {
        public long Id { get; set; }
        public string FilterKey { get; set; }
        public string Title { get; set; }
        public string SubTitle { get; set; }
        public string Description { get; set; }
        public string AddEditBaseUrl { get; set; }
        public string DefaultTxt { get; set; }
        public string AddCardText { get; set; }
        public string AddCardBtn { get; set; }

        public List<WMyCvSectOptionVMR> WMyCvSectOption { get; set; }
    }
}
