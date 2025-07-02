using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class PaginatedList<T>
    {
        public int totalQuantity { get; set; }
        public IEnumerable<T> elements { get; set; }

        public PaginatedList()
        {
            this.totalQuantity = 0;
            this.elements = new List<T>();
        }
    }
}
