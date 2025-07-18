using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WMyCvSectDAL
    {
        public static List<WMyCvSectVMR> ReadAll()
        {
            List<WMyCvSectVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WMyCvSect>().Select(x => new WMyCvSectVMR
                {
                    Id = x.Id,
                    FilterKey = x.FilterKey,
                    Title = x.Title,
                    SubTitle = x.SubTitle,
                    Description = x.Description,
                    AddEditBaseUrl = x.AddEditBaseUrl,
                    DefaultTxt = x.DefaultTxt,
                    AddCardText = x.AddCardText,
                    AddCardBtn = x.AddCardBtn
                }).ToList();
            }

            return result;
        }

        public static WMyCvSectVMR ReadOne(long id)
        {
            WMyCvSectVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WMyCvSect>().Where(x => x.Id == id).Select(x => new WMyCvSectVMR
                {
                    Id = x.Id,
                    FilterKey = x.FilterKey,
                    Title = x.Title,
                    SubTitle = x.SubTitle,
                    Description = x.Description,
                    AddEditBaseUrl = x.AddEditBaseUrl,
                    DefaultTxt = x.DefaultTxt,
                    AddCardText = x.AddCardText,
                    AddCardBtn = x.AddCardBtn
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
