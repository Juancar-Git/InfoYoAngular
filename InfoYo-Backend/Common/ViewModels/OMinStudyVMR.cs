﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class OMinStudyVMR
    {
        public long Id { get; set; }
        public string Name { get; set; }

        public List<OCompanyJobOfferVMR> OCompanyJobOffer { get; set; } = new List<OCompanyJobOfferVMR>();
    }
}
