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
    public class OJobOfferPersonController : ApiController
    {
        //ESTO SON DOS GET CON UN LONG COMO PARÁMETRO, VA A DAR PROBLEMA, QUIZÁS HAY QUE PASAR UNA LISTA DE LONG Y LO RECOGE EL BODY
        //o con otro param que indique el tipo de GET
        [HttpGet]
        public IHttpActionResult ReadByPersonId(long id)
        {
            var response = new ResponseVMR<List<OJobOfferPersonVMR>>();

            try
            {
                response.data = OJobOfferPersonBLL.ReadByPersonId(id);
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
        public IHttpActionResult ReadOne(long OPersonId, long OJobOfferId)
        {

            var response = new ResponseVMR<OJobOfferPersonVMR>();

            try
            {
                response.data = OJobOfferPersonBLL.ReadOne(OPersonId, OJobOfferId);
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
        public IHttpActionResult Create(OJobOfferPerson item)
        {
            var response = new ResponseVMR<(long, long)?>();

            try
            {
                response.data = OJobOfferPersonBLL.Create(item);
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
        public IHttpActionResult Update(long OPersonId, long OJobOfferId, OJobOfferPersonVMR item)
        {
            var response = new ResponseVMR<bool?>();

            try
            {
                item.OPersonId = OPersonId;
                item.OJobOfferId = OJobOfferId;
                OJobOfferPersonBLL.Update(item);
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
        public IHttpActionResult Delete(long OPersonId, long OJobOfferId)
        {
            var response = new ResponseVMR<bool?>();

            try
            {
                OJobOfferPersonBLL.Delete(OPersonId, OJobOfferId);
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
