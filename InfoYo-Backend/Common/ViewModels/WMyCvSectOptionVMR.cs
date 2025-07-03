using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class WMyCvSectOptionVMR
    {
        public long Id { get; set; }
        public string Title { get; set; }
        public long WMyCvSectId { get; set; }

        public WMyCvSectVMR WMyCvSect { get; set; }
    }
}
