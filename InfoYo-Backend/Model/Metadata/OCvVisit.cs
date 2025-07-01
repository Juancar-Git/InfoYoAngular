using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OCvVisitMetadata))]
    public partial class OCvVisit
    {
    }

    public class OCvVisitMetadata
    {
        [Required]
        [StringLength(15)]
        public string VisitType { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        public string SearchText { get; set; }
        //Modificar nombre del campo
        public Nullable<System.DateTime> Birthdate { get; set; }
    }
}
