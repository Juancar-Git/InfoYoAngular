using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OCompanyJobOfferMetadata))]
    public partial class OCompanyJobOffer
    {
    }

    public class OCompanyJobOfferMetadata
    {
        [Required]
        [StringLength(150)]
        public string Title { get; set; }
        [Required]
        public string Description { get; set; }
        public Nullable<System.DateTime> CreationDate { get; set; }
        public Nullable<System.DateTime> PublicationDate { get; set; }
        [Required]
        [StringLength(100)]
        public string Country { get; set; }
        [Required]
        [StringLength(100)]
        public string Province { get; set; }
        [Required]
        [StringLength(100)]
        public string Town { get; set; }
        [Required]
        [StringLength(50)]
        public string LocationType { get; set; }
        [Required]
        [Range(0, 9999999999.99)]
        public Nullable<decimal> Salary { get; set; }
        [Required]
        public int MinExperienceYears { get; set; }
        [Required]
        [StringLength(500)]
        public string MinRequirements { get; set; }
        [Required]
        public bool Active { get; set; }
    }
}
