using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WNoLogSectorSectionDAL
    {
        public static List<WNoLogSectorSectionVMR> ReadAll()
        {
            List<WNoLogSectorSectionVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogSectorSection>().Select(x => new WNoLogSectorSectionVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    MoreSectorsBtn = x.MoreSectorsBtn
                }).ToList();
            }

            return result;
        }

        public static WNoLogSectorSectionVMR ReadOne(long id)
        {
            WNoLogSectorSectionVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WNoLogSectorSection>().Where(x => x.Id == id).Select(x => new WNoLogSectorSectionVMR
                {
                    Id = x.Id,
                    Title = x.Title,
                    MoreSectorsBtn = x.MoreSectorsBtn
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
