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
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class OCountryController : ApiController
    {
        [HttpGet]
        public IHttpActionResult ReadAll()
        {
            var response = new ResponseVMR<List<OCountryVMR>>();

            try
            {
                response.data = OCountryBLL.ReadAll();
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

        [HttpGet]
        public IHttpActionResult ReadOne(long id)
        {

            var response = new ResponseVMR<OCountryVMR>();

            try
            {
                response.data = OCountryBLL.ReadOne(id);
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

        /*
        [HttpPost]
        public IHttpActionResult Create(OCountry item)
        {
            var response = new ResponseVMR<long?>();

            try
            {
                response.data = OCountryBLL.Create(item);
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
        public IHttpActionResult Update(long id, OCountryVMR item)
        {
            var response = new ResponseVMR<bool?>();

            try
            {
                item.Id = id;
                OCountryBLL.Update(item);
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
        public IHttpActionResult Delete(long id)
        {
            var response = new ResponseVMR<bool?>();

            try
            {
                OCountryBLL.Delete(id);
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
        }*/
    }
}
