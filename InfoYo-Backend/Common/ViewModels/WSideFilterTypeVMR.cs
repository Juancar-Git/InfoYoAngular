using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class WSideFilterTypeVMR
    {
        public long Id { get; set; }
        public string FilterKey { get; set; }
        public string Title { get; set; }
        public string ShowMoreTitle { get; set; }

        public List<WSideFilterItemVMR> WSideFilterItem { get; set; } = new List<WSideFilterItemVMR>();
    }
}
