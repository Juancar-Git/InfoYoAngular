using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class OPersonVMR
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public string FirstSurname { get; set; }
        public string SecondSurname { get; set; }
        public Nullable<System.DateTime> Birthdate { get; set; }
        public string DocumentType { get; set; }
        public string Gender { get; set; }
        public string Country { get; set; }
        public string PostCode { get; set; }
        public string Province { get; set; }
        public string Town { get; set; }
        public string Address { get; set; }
        public string MovilPhone { get; set; }
        public string LandlinePhone { get; set; }
        public string ForeignPhone { get; set; }
        public string PreferPhone { get; set; }
        public string WebSite { get; set; }
        public bool OpenToWork { get; set; }
        public System.DateTime CreationDate { get; set; }
        public bool Closed { get; set; }
    }
}
