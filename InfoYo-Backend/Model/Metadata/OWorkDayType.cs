using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OWorkDayTypeMetadata))]
    public partial class OWorkDayType
    {
    }

    public class OWorkDayTypeMetadata
    {
        [Required]
        [StringLength(150)]
        public string Name { get; set; }
    }
}
