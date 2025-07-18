using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WMyCvPageDAL
    {
        public static WMyCvPageVMR ReadOne(long id)
        {
            WMyCvPageVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WMyCvPage>().Where(x => x.Id == id).Select(x => new WMyCvPageVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    ExperienceTitle = x.ExperienceTitle,
                    AddBtn = x.AddBtn,
                    EditBtn = x.EditBtn
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
