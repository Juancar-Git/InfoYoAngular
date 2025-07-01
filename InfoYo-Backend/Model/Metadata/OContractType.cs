using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OContractTypeMetadata))]
    public partial class OContractType
    {
    }

    public class OContractTypeMetadata
    {
        [Required]
        [StringLength(150)]
        public string Name { get; set; }
    }
}
