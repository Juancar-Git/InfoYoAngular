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
    public class OPersonController : ApiController
    {
        [HttpGet]
        public IHttpActionResult ReadAll(int quantity = 10, int page = 0, string searchText = null)
        {
            var response = new ResponseVMR<PaginatedList<OPersonVMR>>();

            try
            {
                response.data = OPersonBLL.ReadAll(quantity, page, searchText);
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

            var response = new ResponseVMR<OPersonVMR>();

            try
            {
                response.data = OPersonBLL.ReadOne(id);
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
        public IHttpActionResult Create(OPerson item)
        {
            var response = new ResponseVMR<long?>();

            try
            {
                response.data = OPersonBLL.Create(item);
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
        public IHttpActionResult Update(long id, OPersonVMR item)
        {
            var response = new ResponseVMR<bool?>();

            try
            {
                item.Id = id;
                OPersonBLL.Update(item);
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
                OPersonBLL.Delete(id);
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
