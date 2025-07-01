using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OCompanyOpinionMetadata))]
    public partial class OCompanyOpinion
    {
    }

    public class OCompanyOpinionMetadata
    {
        [Required]
        [StringLength(150)]
        public string Title { get; set; }
        [Required]
        [StringLength(300)]
        public string Description { get; set; }
        [Required]
        [Range(0, 5)]
        public int Stars { get; set; }
        [Required]
        public int Complaints { get; set; }
        [Required]
        public bool Active { get; set; }
    }
}
