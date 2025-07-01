using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OPersonMetadata))]
    public partial class OPerson
    {
    }

    public class OPersonMetadata
    {
        [Required]
        [StringLength(100)]
        public string Name { get; set; }
        [Required]
        [StringLength(100)]
        public string FirstSurname { get; set; }
        [StringLength(100)]
        public string SecondSurname { get; set; }
        public Nullable<System.DateTime> Birthdate { get; set; }
        [Required]
        [StringLength(50)]
        public string DocumentType { get; set; }
        [Required]
        [StringLength(50)]
        public string Gender { get; set; }
        [Required]
        [StringLength(100)]
        public string Country { get; set; }
        [Required]
        [StringLength(15)]
        public string PostCode { get; set; }
        [Required]
        [StringLength(100)]
        public string Province { get; set; }
        [Required]
        [StringLength(100)]
        public string Town { get; set; }
        [StringLength(100)]
        public string Address { get; set; }
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
        [StringLength(20)]
        [Phone]
        public string PreferPhone { get; set; }
        [Required]
        public string WebSite { get; set; }
        [Required]
        public bool OpenToWork { get; set; }
        [Required]
        public System.DateTime CreationDate { get; set; }
        [Required]
        public bool Closed { get; set; }
    }
}
