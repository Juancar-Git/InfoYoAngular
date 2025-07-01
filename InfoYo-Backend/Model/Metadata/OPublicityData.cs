using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OPublicityDataMetadata))]
    public partial class OPublicityData
    {
    }

    public class OPublicityDataMetadata
    {
        [Required]
        public string PublicityBgImgPath { get; set; }
        [Required]
        public string LinkUrl { get; set; }
    }
}
