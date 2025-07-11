using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAL
{
    public class WCandidateLogInDAL
    {
        public static List<WCandidateLogInVMR> ReadAll(long Id)
        {
            List<WCandidateLogInVMR> result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WCandidateLogIn>().Where(x => x.Id == Id).Select(x => new WCandidateLogInVMR
                {
                    Id = x.Id,
                    LogInTitle = x.LogInTitle,
                    Email = x.Email,
                    Password = x.Password,
                    ForgetPw = x.ForgetPw,
                    LogInBtn = x.LogInBtn,
                    SignInTitle = x.SignInTitle,
                    CreateCvTl = x.CreateCvTl,
                    CreateCvDesc = x.CreateCvDesc,
                    CreateCvIcon = x.CreateCvIcon,
                    RegisterTl = x.RegisterTl,
                    RegisterDesc = x.RegisterDesc,
                    RegisterIcon = x.RegisterIcon,
                    UpdCvTl = x.UpdCvTl,
                    UpdCvDesc = x.UpdCvDesc,
                    UpdCvIcon = x.UpdCvIcon,
                    SignInBtn = x.SignInBtn,
                    OpenSession = x.OpenSession,
                    CompanyAccess = x.CompanyAccess,
                    Help = x.Help
                }).ToList();
            }

            return result;
        }

        public static WCandidateLogInVMR ReadOne(long Id)
        {
            WCandidateLogInVMR result = null;

            using (var db = MyDbConnection.Create())
            {
                result = db.Set<WCandidateLogIn>().Where(x => x.Id == Id).Select(x => new WCandidateLogInVMR
                {
                    Id = x.Id,
                    LogInTitle = x.LogInTitle,
                    Email = x.Email,
                    Password = x.Password,
                    ForgetPw = x.ForgetPw,
                    LogInBtn = x.LogInBtn,
                    SignInTitle = x.SignInTitle,
                    CreateCvTl = x.CreateCvTl,
                    CreateCvDesc = x.CreateCvDesc,
                    CreateCvIcon = x.CreateCvIcon,
                    RegisterTl = x.RegisterTl,
                    RegisterDesc = x.RegisterDesc,
                    RegisterIcon = x.RegisterIcon,
                    UpdCvTl = x.UpdCvTl,
                    UpdCvDesc = x.UpdCvDesc,
                    UpdCvIcon = x.UpdCvIcon,
                    SignInBtn = x.SignInBtn,
                    OpenSession = x.OpenSession,
                    CompanyAccess = x.CompanyAccess,
                    Help = x.Help
                }).FirstOrDefault();
            }

            return result;
        }
    }
}
