using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OCountryMetadata))]
    public partial class OCountry
    {
    }

    public class OCountryMetadata
    {
        [Required]
        [StringLength(100)]
        public string Name { get; set; }
        [Required]
        [StringLength(3)]
        public string IsoCode { get; set; }
    }
}
