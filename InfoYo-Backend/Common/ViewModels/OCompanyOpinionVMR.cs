using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class OCompanyOpinionVMR
    {
        public long Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public int Stars { get; set; }
        public int Complaints { get; set; }
        public long OCompanyId { get; set; }
        public long OPersonId { get; set; }

        public List<OCnyComplaintOpinionVMR> OCnyComplaintOpinion { get; set; }
        public virtual OPersonVMR OPerson { get; set; }
    }
}