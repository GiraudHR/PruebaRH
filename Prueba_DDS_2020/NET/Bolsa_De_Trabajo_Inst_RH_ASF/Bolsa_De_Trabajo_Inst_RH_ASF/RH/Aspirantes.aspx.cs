using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Entidades;
using Newtonsoft.Json;
using Negocio;
using System.Xml;

namespace Bolsa_De_Trabajo_Inst_RH_ASF.RH
{
    public partial class Aspirantes : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]

        public static string  cargaAspirantes()
        {
            nAspirante aspirante = new nAspirante();
            aspirante.obtener_Aspirantes();
            List<eAspirante> listaAspirantes = aspirante.listaAspirantes;
            string result = JsonConvert.SerializeObject(listaAspirantes);
            return result;
        }

        protected void btnXML_Click(object sender, EventArgs e)
        {
            XmlDocument doc = new XmlDocument();//Donde guardamos toda la info
            XmlElement raiz = doc.CreateElement("Aspirantes");//Directorio raiz
            doc.AppendChild(raiz);

            XmlElement aspirante = doc.CreateElement("Aspirante");
            raiz.AppendChild(aspirante);

            XmlElement nombre = doc.CreateElement("Nombre");
            nombre.AppendChild(doc.CreateTextNode("Gerardo"));
            aspirante.AppendChild(nombre);

            //nuevo Aspirante
            aspirante = doc.CreateElement("Aspirante");
            raiz.AppendChild(aspirante);

            nombre = doc.CreateElement("Nombre");
            nombre.AppendChild(doc.CreateTextNode("Juan"));
            aspirante.AppendChild(nombre);

        }
    }
}