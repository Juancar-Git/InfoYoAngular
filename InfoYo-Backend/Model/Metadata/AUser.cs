using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(AUserMetadata))]
    public partial class AUser
    {
    }
    public class AUserMetadata
    {
        [Required]
        [StringLength(255)]
        [EmailAddress]
        public string Email { get; set; }
        [Required]
        public string PasswordHash { get; set; }
        [Required]
        [StringLength(50)]
        public string Rol { get; set; }
        public Nullable<bool> Status { get; set; }
        public Nullable<System.DateTime> CreationDate { get; set; }
    }
}
