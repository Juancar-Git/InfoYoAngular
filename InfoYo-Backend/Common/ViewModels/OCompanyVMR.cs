using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common.ViewModels
{
    public class OCompanyVMR
    {
        public long Id { get; set; }
        public string CompanyName { get; set; }
        public string RegisteredName { get; set; }
        public string NIF { get; set; }
        public string TaxAddress { get; set; }
        public string TaxCountry { get; set; }
        public string TaxProvince { get; set; }
        public string TaxTown { get; set; }
        public string TaxPostCode { get; set; }
        public string RegOffiAddress { get; set; }
        public string RegOffiCountry { get; set; }
        public string RegOffiProvince { get; set; }
        public string RegOffiTown { get; set; }
        public string RegOffiPostCode { get; set; }
        public string LaborSector { get; set; }
        public int WorkersNum { get; set; }
        public string InternalName { get; set; }
        public string Description { get; set; }
        public string MainEmail { get; set; }
        public string SecondaryEmail { get; set; }
        public string MovilPhone { get; set; }
        public string LandlinePhone { get; set; }
        public string ForeignPhone { get; set; }
        public string WebSite { get; set; }
        public string LogoImgPath { get; set; }
        public string BgImgPath { get; set; }
        public string MiniImgPath { get; set; }
        public string CompanyBgImgPath { get; set; }
        public string MiniText { get; set; }

        // ESTO DEBERÍA SER UN OBJETO OCompanyInfoVMR, NO UNA LISTA, YA QUE SOLO HAY UNA INFORMACIÓN POR CADA COMPANY !!!CAMBIAR!!!
        public List<OCompanyInfoVMR> OCompanyInfo { get; set; }
        public List<OCompanyJobOfferVMR> OCompanyJobOffer { get; set; }
        public List<OCompanyOpinionVMR> OCompanyOpinion { get; set; }
        public List<OCvVisitVMR> OCvVisit { get; set; }
    }
}
