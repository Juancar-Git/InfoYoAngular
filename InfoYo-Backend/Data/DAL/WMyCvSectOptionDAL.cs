using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WMyCvSectOptionDAL
    {
        public static List<WMyCvSectOptionVMR> ReadAll()
        {
            List<WMyCvSectOptionVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WMyCvSectOption>().Select(x => new WMyCvSectOptionVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    WMyCvSectId = x.WMyCvSectId
                }).ToList();
            }

            return result;
        }

        public static WMyCvSectOptionVMR ReadOne(long Id)
        {
            WMyCvSectOptionVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WMyCvSectOption>().Where(x => x.Id == Id).Select(x => new WMyCvSectOptionVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    WMyCvSectId = x.WMyCvSectId
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
