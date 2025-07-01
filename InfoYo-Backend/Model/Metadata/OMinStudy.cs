using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OMinStudyMetadata))]
    public partial class OMinStudy
    {
    }

    public class OMinStudyMetadata
    {
        [Required]
        [StringLength(150)]
        public string Name { get; set; }
    }
}
