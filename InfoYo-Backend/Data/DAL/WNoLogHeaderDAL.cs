using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WNoLogHeaderDAL
    {
        public static WNoLogHeaderVMR ReadOne(long Id)
        {
            WNoLogHeaderVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogHeader>().Where(x => x.Id == Id).Select(x => new WNoLogHeaderVMR
                {
                    Id = x.Id,
                    HeadTitle = x.HeadTitle,
                    Title = x.Title,
                    HeadBgImgPath = x.HeadBgImgPath,
                    CompanyAccessBtn = x.CompanyAccessBtn,
                    CompanyAccessBtnUrl = x.CompanyAccessBtnUrl,
                    CandidateAccessBtn = x.CandidateAccessBtn,
                    CandidateAccessBtnUrl = x.CandidateAccessBtnUrl,
                    BlockFilterTitle = x.BlockFilterTitle,
                    SeachFilterTitle = x.SeachFilterTitle,
                    LocationFilterTitle = x.LocationFilterTitle,
                    SearchBtn = x.SearchBtn,
                    SearchBtnHoverDesc = x.SearchBtnHoverDesc
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
