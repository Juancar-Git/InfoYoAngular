using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OCnyComplaintOpinionMetadata))]
    public partial class OCnyComplaintOpinion
    {
    }

    public class OCnyComplaintOpinionMetadata
    {
        [Required]
        [StringLength(2000)]
        public string Description { get; set; }
        [Required]
        [Range(0, 5)]
        public int Stars { get; set; }
        [Required]
        public bool Active { get; set; }
    }
}
