using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OCompanyMetadata))]
    public partial class OCompany
    {
    }

    public class OCompanyMetadata
    {
        [Required]
        [StringLength(150)]
        public string CompanyName { get; set; }
        [Required]
        [StringLength(150)]
        public string RegisteredName { get; set; }
        [Required]
        [StringLength(30)]
        public string NIF { get; set; }
        [Required]
        [StringLength(100)]
        public string TaxAddress { get; set; }
        [Required]
        [StringLength(100)]
        public string TaxCountry { get; set; }
        [Required]
        [StringLength(100)]
        public string TaxProvince { get; set; }
        [Required]
        [StringLength(100)]
        public string TaxTown { get; set; }
        [Required]
        [StringLength(15)]
        public string TaxPostCode { get; set; }
        [Required]
        [StringLength(100)]
        public string RegOffiAddress { get; set; }
        [Required]
        [StringLength(100)]
        public string RegOffiCountry { get; set; }
        [Required]
        [StringLength(100)]
        public string RegOffiProvince { get; set; }
        [Required]
        [StringLength(100)]
        public string RegOffiTown { get; set; }
        [Required]
        [StringLength(15)]
        public string RegOffiPostCode { get; set; }
        [Required]
        [StringLength(100)]
        public string LaborSector { get; set; }
        [Required]
        public int WorkersNum { get; set; }
        [Required]
        [StringLength(100)]
        public string InternalName { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        [StringLength(200)]
        [EmailAddress]
        public string MainEmail { get; set; }
        [Required]
        [StringLength(200)]
        [EmailAddress]
        public string SecondaryEmail { get; set; }
        [Required]
        [StringLength(20)]
        [Phone]
        public string MovilPhone { get; set; }
        [StringLength(20)]
        [Phone]
        public string LandlinePhone { get; set; }
        [StringLength(20)]
        [Phone]
        public string ForeignPhone { get; set; }
        public string WebSite { get; set; }
        public string LogoImgPath { get; set; }
        public string BgImgPath { get; set; }
        public string MiniImgPath { get; set; }
        public string CompanyBgImgPath { get; set; }
        [StringLength(150)]
        public string MiniText { get; set; }
    }
}
