using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OJobOfferPersonMetadata))]
    public partial class OJobOfferPerson
    {
    }

    public class OJobOfferPersonMetadata
    {
        [Required]
        public System.DateTime ApplicationDate { get; set; }
        [Required]
        [StringLength(50)]
        public string Status { get; set; }
    }
}
