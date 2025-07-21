using Common.ViewModels;
using Model.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Logic.BLL;
using System.Web.UI;
using System.Web.Http.Cors;
using Newtonsoft.Json.Linq;

namespace WebAPI.Controllers
{
    //MODIFICAR ESTA LÍNEA SOLO PARA ACEPTAR PETICIONES DEL FRONEND Y EN ESTA CLASE AÑADIR ENCRYPTACIÓN
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class AUserController : ApiController
    {
        /*
        [HttpGet]
        public IHttpActionResult ReadAll(int quantity = 10, int page = 0, string searchText = null)
        {
            var response = new ResponseVMR<PaginatedList<AUserVMR>>();

            try
            {
                response.data = AUserBLL.ReadAll(quantity, page, searchText);
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
        public IHttpActionResult ReadOne(int id)
        {

            var response = new ResponseVMR<AUserVMR>();

            try
            {
                response.data = AUserBLL.ReadOne(id);
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

        */

        [HttpPost]
        public IHttpActionResult Create(AUser item)
        {
            var response = new ResponseVMR<long?>();

            try
            {
                response.data = AUserBLL.Create(item);
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
        public IHttpActionResult Update(long id, AUserVMR item)
        {
            var response = new ResponseVMR<bool?>();

            try
            {
                item.Id = id;
                AUserBLL.Update(item);
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
                AUserBLL.Delete(id);
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
