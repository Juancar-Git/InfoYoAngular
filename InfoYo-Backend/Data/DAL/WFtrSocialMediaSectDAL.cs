using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WFtrSocialMediaSectDAL
    {
        public static List<WFtrSocialMediaSectVMR> ReadAll()
        {
            List<WFtrSocialMediaSectVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrSocialMediaSect>().Select(x => new WFtrSocialMediaSectVMR
                {
                    Id = x.Id,
                    Title = x.Title
                }).ToList();
            }

            return result;
        }

        public static WFtrSocialMediaSectVMR ReadOne(long id)
        {
            WFtrSocialMediaSectVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrSocialMediaSect>().Where(x => x.Id == id).Select(x => new WFtrSocialMediaSectVMR
                {
                    Id = x.Id,
                    Title = x.Title
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
