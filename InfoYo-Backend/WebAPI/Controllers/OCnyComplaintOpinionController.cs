using Common.ViewModels;
using Logic.BLL;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace WebAPI.Controllers
{
    [EnableCors(origins: "*", headers: "*" , methods: "*")]
    public class OCnyComplaintOpinionController : ApiController
    {

        [HttpGet]
        public IHttpActionResult ReadByPersonId(long id)
        {
            var response = new ResponseVMR<List<OCnyComplaintOpinionVMR>>();

            try
            {
                response.data = OCnyComplaintOpinionBLL.ReadByPersonId(id);
            }
            catch ( Exception e)
            {
                response.code = HttpStatusCode.InternalServerError;
                response.data = null;
                response.messages.Add(e.Message);
                response.messages.Add(e.ToString());
            }

            return Content(response.code, response);
        }
        
        [HttpGet]
        public IHttpActionResult ReadOne(long OCompanyOpinionId, long OPersonId)
        {

            var response = new ResponseVMR<OCnyComplaintOpinionVMR>();

            try
            {
                response.data = OCnyComplaintOpinionBLL.ReadOne(OCompanyOpinionId,  OPersonId);
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


        [HttpPost]
        public IHttpActionResult Create(OCnyComplaintOpinion item)
        {
            var response = new ResponseVMR<(long, long)?>();

            try
            {
                response.data = OCnyComplaintOpinionBLL.Create(item);
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

        [HttpPut]
        public IHttpActionResult Update(long OCompanyOpinionId, long OPersonId, OCnyComplaintOpinionVMR item)
        {
            var response = new ResponseVMR<bool?>();

            try
            {
                item.OCompanyOpinionId = OCompanyOpinionId;
                item.OPersonId = OPersonId;
                OCnyComplaintOpinionBLL.Update(item);
                response.data = true;
            }
            catch (Exception e)
            {
                response.code = HttpStatusCode.InternalServerError;
                response.data = false;
                response.messages.Add(e.Message);
                response.messages.Add(e.ToString());
            }

            return Content(response.code, response);
        }

        [HttpDelete]
        public IHttpActionResult Delete(long OCompanyOpinionId, long OPersonId)
        {
            var response = new ResponseVMR<bool?>();

            try
            {
                OCnyComplaintOpinionBLL.Delete(OCompanyOpinionId, OPersonId);
                response.data = true;
            }
            catch (Exception e)
            {
                response.code = HttpStatusCode.InternalServerError;
                response.data = false;
                response.messages.Add(e.Message);
                response.messages.Add(e.ToString());
            }

            return Content(response.code, response);
        }
    }
}
