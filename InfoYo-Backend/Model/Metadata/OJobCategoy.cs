using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OJobCategoyMetadata))]
    public partial class OJobCategoy
    {
    }

    public class OJobCategoyMetadata
    {
        [Required]
        [StringLength(150)]
        public string Name { get; set; }
    }
}
