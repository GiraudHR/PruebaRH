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
    public class nEXP_LABORAL
    {
        public eEXP_LABORAL entExperiencia { get; set; }
        dEXP_LABORAL accion;
        public bool RegistroValido { get; set; }
        public nEXP_LABORAL()
        {
            entExperiencia = new eEXP_LABORAL();
            accion = new dEXP_LABORAL();
        }

        public DataSet ObtenerExperiencia()
        {
            DataSet datos;
            try
            {
                datos = accion.ObtenerExperiencia();
            }
            catch (Exception)
            {

                throw;
            }

            return datos;
        }

        public void Validar_Registro()
        {
            try
            {
                accion.entidadExperiencia = entExperiencia;
                RegistroValido = accion.Registrar_Experiencia();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
