using Common.ViewModels;
using Logic.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace WebAPI.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class WNoLogCompanySectionController : ApiController
    {
        /*
         * http://localhost:8803/api/WNoLogCompanySection/
         * */
        [HttpGet]
        public IHttpActionResult ReadAll()
        {
            var response = new ResponseVMR<List<WNoLogCompanySectionVMR>>();

            try
            {
                response.data = WNoLogCompanySectionBLL.ReadAll();
            }
            catch (Exception e)
            {
                response.code = HttpStatusCode.InternalServerError;
                response.data = null;
                response.messages.Add(e.Message);
                response.messages.Add(e.ToString());
            }

            return Content(response.code, response);
        }

        /*
         * http://localhost:8803/api/WNoLogCompanySection/1
         * */
        [HttpGet]
        public IHttpActionResult ReadOne(long id)
        {
            var response = new ResponseVMR<WNoLogCompanySectionVMR>();

            try
            {
                response.data = WNoLogCompanySectionBLL.ReadOne(id);
            }
            catch (Exception e)
            {
                response.code = HttpStatusCode.InternalServerError;
                response.data = null;
                response.messages.Add(e.Message);
                response.messages.Add(e.ToString());
            }

            if (response.data == null && response.messages.Count() == 0)
            {
                response.code = HttpStatusCode.NotFound;
                response.messages.Add("Element not found");
            }

            return Content(response.code, response);
        }
    }
}
