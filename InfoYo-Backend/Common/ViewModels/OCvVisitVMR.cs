using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class OCvVisitVMR
    {
        public long Id { get; set; }
        public string VisitType { get; set; }
        public string Description { get; set; }
        public string SearchText { get; set; }
        public Nullable<System.DateTime> Birthdate { get; set; }
        public long OPersonId { get; set; }
        public long OCompanyId { get; set; }

        public virtual OPersonVMR OPerson { get; set; }
    }
}
