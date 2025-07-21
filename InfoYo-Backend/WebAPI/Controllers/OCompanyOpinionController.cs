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
    public class OCompanyOpinionController : ApiController
    {
        //ESTO SON DOS GET CON UN LONG COMO PARÁMETRO, VA A DAR PROBLEMA, QUIZÁS HAY QUE PASAR UNA LISTA DE LONG Y LO RECOGE EL BODY
        //o con otro param que indique el tipo de GET
        [HttpGet]
        public IHttpActionResult ReadByCompanyId(long id)
        {
            var response = new ResponseVMR<List<OCompanyOpinionVMR>>();

            try
            {
                response.data = OCompanyOpinionBLL.ReadByCompanyId(id);
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

        //ESTO SON DOS GET CON UN LONG COMO PARÁMETRO, VA A DAR PROBLEMA, QUIZÁS HAY QUE PASAR UNA LISTA DE LONG Y LO RECOGE EL BODY
        //o con otro param que indique el tipo de GET
        [HttpGet]
        public IHttpActionResult ReadByPersonId(long id)
        {
            var response = new ResponseVMR<List<OCompanyOpinionVMR>>();

            try
            {
                response.data = OCompanyOpinionBLL.ReadByPersonId(id);
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

            var response = new ResponseVMR<OCompanyOpinionVMR>();

            try
            {
                response.data = OCompanyOpinionBLL.ReadOne(id);
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
        public IHttpActionResult Create(OCompanyOpinion item)
        {
            var response = new ResponseVMR<long?>();

            try
            {
                response.data = OCompanyOpinionBLL.Create(item);
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
        public IHttpActionResult Update(long id, OCompanyOpinionVMR item)
        {
            var response = new ResponseVMR<bool?>();

            try
            {
                item.Id = id;
                OCompanyOpinionBLL.Update(item);
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
                OCompanyOpinionBLL.Delete(id);
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
