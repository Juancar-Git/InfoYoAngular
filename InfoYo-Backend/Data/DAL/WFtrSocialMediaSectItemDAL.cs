using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WFtrSocialMediaSectItemDAL
    {
        public static List<WFtrSocialMediaSectItemVMR> ReadAll(long Id)
        {
            List<WFtrSocialMediaSectItemVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrSocialMediaSectItem>().Where(x => x.Id == Id).Select(x => new WFtrSocialMediaSectItemVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    TitleHoverDesc = x.TitleHoverDesc,
                    IconItem = x.IconItem,
                    ItemUrl = x.ItemUrl
                }).ToList();
            }

            return result;
        }

        public static WFtrSocialMediaSectItemVMR ReadOne(long Id)
        {
            WFtrSocialMediaSectItemVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WFtrSocialMediaSectItem>().Where(x => x.Id == Id).Select(x => new WFtrSocialMediaSectItemVMR
                {
                    Id = x.Id,
                    Name = x.Name,
                    TitleHoverDesc = x.TitleHoverDesc,
                    IconItem = x.IconItem,
                    ItemUrl = x.ItemUrl
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
