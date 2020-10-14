using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Datos;
using System.Data;

namespace Negocio
{
    public class nDATOS_PERSONALES
    {
        public eDATOS_PERSONALES entAspirante { get; set; }
        dDATOS_PERSONALES accion = null;
        DataSet datosAspirantes = new DataSet();
        public int idRegistro { get; set; }
        public nDATOS_PERSONALES()
        {
            entAspirante = new eDATOS_PERSONALES();
            accion = new dDATOS_PERSONALES();
        }

        public void Validar_Registro()
        {
            try
            {
                accion.entidadAspirante = entAspirante;
                idRegistro = accion.Registrar_Aspirante();
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        public void obtener_Aspirantes()
        {
            try
            {
                accion.entidadAspirante = entAspirante;

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
