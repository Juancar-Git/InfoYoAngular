using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class OCompanyJobOfferVMR
    {
        public long Id { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public Nullable<System.DateTime> CreationDate { get; set; }
        public Nullable<System.DateTime> PublicationDate { get; set; }
        public string Country { get; set; }
        public string Province { get; set; }
        public string Town { get; set; }
        public string LocationType { get; set; }
        public Nullable<decimal> Salary { get; set; }
        public int MinExperienceYears { get; set; }
        public string MinRequirements { get; set; }

        public OCompanyVMR OCompany { get; set; }
        public OContractTypeVMR OContractType { get; set; }
        public OJobCategoryVMR OJobCategory { get; set; }
        public OMinStudyVMR OMinStudy { get; set; }
        public OWorkDayTypeVMR OWorkDayType { get; set; }
        public List<OJobOfferPersonVMR> OJobOfferPerson { get; set; } = new List<OJobOfferPersonVMR>();
    }
}
