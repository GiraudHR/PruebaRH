using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Entidades;
using Negocio;
using System.Data;

namespace ServicioWebRH.Controllers
{
    public class AspirantesController : ApiController
    {
        public eAspirante datosAspirante { get; set; }
        public List<eAspirante> listaAspirantes { get; set; }


        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        public IHttpActionResult Post([FromBody]List<eAspirante> aspirantes)
        {
            List<eAspirante> listaAspirantes = aspirantes;
            if (listaAspirantes == null)
            {
                return NotFound();
            }

            return Ok(listaAspirantes);
        }
    }
}
