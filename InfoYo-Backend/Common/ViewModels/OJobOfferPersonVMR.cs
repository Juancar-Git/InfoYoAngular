using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class OJobOfferPersonVMR
    {
        public long OPersonId { get; set; }
        public long OJobOfferId { get; set; }
        public System.DateTime ApplicationDate { get; set; }
        public string Status { get; set; }
    }
}
