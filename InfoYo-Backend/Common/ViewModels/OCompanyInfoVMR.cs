using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class OCompanyInfoVMR
    {
        public long Id { get; set; }
        public string Description { get; set; }
        public string YtVideoUrl { get; set; }
        public string FirstImgUrl { get; set; }
        public string SecondImgUrl { get; set; }

        public virtual OCompanyVMR OCompany { get; set; }
    }
}
