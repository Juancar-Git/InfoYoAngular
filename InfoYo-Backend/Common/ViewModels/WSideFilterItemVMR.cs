using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class WSideFilterItemVMR
    {
        public long Id { get; set; }
        public string ItemValue { get; set; }
        public string ItemLabel { get; set; }
        public long WSideFilterTypeId { get; set; }

        public WSideFilterTypeVMR WSideFilterType { get; set; }
    }
}
