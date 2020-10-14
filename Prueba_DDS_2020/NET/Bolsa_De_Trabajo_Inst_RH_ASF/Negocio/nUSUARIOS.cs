using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;
using Entidades;

namespace Negocio
{
    public class nUSUARIOS
    {
        public eUSUARIOS entUsuario { get; set; }
        dUSUARIOS acccion = null;
        public bool usuarioValido { get; set; }
        public nUSUARIOS()
        {
            entUsuario = new eUSUARIOS();
            acccion = new dUSUARIOS();
        }

        public void Validar_Usuario()
        {
            DataSet du;
            try
            {
                acccion.entidadUsuario = entUsuario;
                du = acccion.Validar_Usuario();
                if (du.Tables[0].Rows.Count == 0)
                {
                    usuarioValido = false;
                }
                else
                {
                    usuarioValido = true;
                }
            }
            catch (Exception)
            {

                throw;
            }
        }



    }
}
