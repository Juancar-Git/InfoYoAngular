using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class OCnyComplaintReasonVMR
    {
        public long Id { get; set; }
        public string Name { get; set; }

        public List<OCnyComplaintOpinionVMR> OCnyComplaintOpinion { get; set; }
                    
    }
}
