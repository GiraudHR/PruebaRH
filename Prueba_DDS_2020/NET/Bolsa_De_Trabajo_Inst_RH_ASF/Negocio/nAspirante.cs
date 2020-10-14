using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using Datos;

namespace Negocio
{
    public class nAspirante
    {
        public eAspirante entAspirante { get; set; }
        public List<eAspirante> listaAspirantes { get; set; }
        dAspirante accion = null;
        DataSet datosAspirantes = new DataSet();
        public nAspirante()
        {
            entAspirante = new eAspirante();
            
            accion = new dAspirante();
        }

        public void obtener_Aspirantes()
        {
            DataSet datos = new DataSet();
            try
            {

                accion.entidadAspirante = entAspirante;

                datos=accion.obtenerAspirante();
                if (datos == null || datos.Tables.Count == 0 || datos.Tables[0].Rows.Count == 0)
                {
                    listaAspirantes = null;
                }
                else
                {
                    listaAspirantes = new List<eAspirante>();
                    foreach (DataRow dr in datos.Tables[0].Rows) {
                        eAspirante a = new eAspirante();
                        a.NOMBRE = (string)dr["nombre"];
                        a.PATERNO = (string)dr["paterno"];
                        a.MATERNO = (string)dr["materno"];
                        a.FECHA_NAC = (DateTime)dr["fecha"];
                        listaAspirantes.Add(a);
                    }  
                }

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
