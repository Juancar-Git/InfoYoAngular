using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Models
{
    [MetadataType(typeof(OCompanyInfoMetadata))]
    public partial class OCompanyInfo
    {
    }
    //En principio no necesita metadatos.
    public class OCompanyInfoMetadata
    {
        public string Description { get; set; }
        public string YtVideoUrl { get; set; }
        public string FirstImgUrl { get; set; }
        public string SecondImgUrl { get; set; }
    }
}
