using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class OCnyComplaintOpinionVMR
    {
        public long OCompanyOpinionId { get; set; }
        public long OPersonId { get; set; }
        public string Description { get; set; }
        public int Stars { get; set; }


        public List<OCompanyOpinionVMR> CompanyOpinions { get; set; } = new List<OCompanyOpinionVMR>();
        public OCnyComplaintReasonVMR OCnyComplaintReason { get; set; }
        public OCompanyOpinionVMR OCompanyOpinion { get; set; }
        public OPersonVMR OPerson { get; set; }

    }
}
