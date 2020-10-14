using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;
using System.Xml.Linq;
using System.IO;
using System.Xml.Serialization;
using System.Runtime.Serialization;
using System.Text;
using System.Xml;

namespace Bolsa_De_Trabajo_Inst_RH_ASF.RH
{
    public partial class FormatoXML : System.Web.UI.Page
    {
        public eAspirante datosAspirante { get; set; }
        public List<eAspirante> listaAspirantes { get; set; }
        nAspirante accion = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            accion = new nAspirante();
            generarXML();
        }

        /*public void ConvertToXML()
        {
            accion.obtener_Aspirantes();
            listaAspirantes = accion.listaAspirantes;
            string xmlString = conertirobjetoenXMLstring(listaAspirantes);
            XElement xElement = xElement.Parse(xmlString);
            lblDatos.Text = xElement;
        }*/


        public static string conertirobjetoenXMLstring(List<eAspirante> eAspirantes)
        {
            
            string xmlString = null;
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(List<eAspirante>));
            using (MemoryStream memoryStream = new MemoryStream())
            {
                xmlSerializer.Serialize(memoryStream, eAspirantes);
                memoryStream.Position = 0;
                xmlString = new StreamReader(memoryStream).ReadToEnd();
            }
            return xmlString;
        }



        private void generarXML()
        {
            accion.obtener_Aspirantes();
            listaAspirantes = accion.listaAspirantes;
            //DataContractSerializer s = new DataContractSerializer(typeof(List<eAspirante>));
            /*var serializer = new DataContractSerializer(typeof(List<eAspirante>));
            var sb = new StringBuilder();
            using (var writer = XmlWriter.Create(sb))
            {
                serializer.WriteObject(writer, listaAspirantes);
            }

            lblDatos.Text=  sb.ToString();
            */


            string xml = null;
            using (StringWriter sw = new StringWriter())
            {
                XmlSerializer xs = new XmlSerializer(typeof( List<eAspirante>));
                xs.Serialize(sw, listaAspirantes);
                try
                {
                    
                    xml = sw.ToString();
                    string theXML = Server.HtmlEncode(xml);
                    ltDatos.Text = theXML;
                }
                catch (Exception e)
                {

                    throw e;
                }
            }
        }

    }
}