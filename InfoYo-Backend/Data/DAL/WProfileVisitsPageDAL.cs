using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WProfileVisitsPageDAL
    {
        public static WProfileVisitsPageVMR ReadOne(long id)
        {
            WProfileVisitsPageVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WProfileVisitsPage>().Where(x => x.Id == id).Select(x => new WProfileVisitsPageVMR
                {
                    Id = x.Id,
                    HeadTitle = x.HeadTitle,
                    Title = x.Title,
                    Subtititle = x.Subtititle,
                    Description = x.Description,
                    HourItemText = x.HourItemText,
                    SeeCompanyItemBtn = x.SeeCompanyItemBtn,
                    SeeCompanyBaseItemUrl = x.SeeCompanyBaseItemUrl,
                    EmptyDefaultTitle = x.EmptyDefaultTitle,
                    EmptyDefaultDesc = x.EmptyDefaultDesc,
                    EmptyDefaultImg = x.EmptyDefaultImg
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
