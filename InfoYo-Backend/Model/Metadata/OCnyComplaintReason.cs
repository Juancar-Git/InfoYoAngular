using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OCnyComplaintReasonMetadata))]
    public partial class OCnyComplaintReason
    {
    }

    public class OCnyComplaintReasonMetadata
    {
        [Required]
        [StringLength(150)]
        public string Name { get; set; }
    }
}
