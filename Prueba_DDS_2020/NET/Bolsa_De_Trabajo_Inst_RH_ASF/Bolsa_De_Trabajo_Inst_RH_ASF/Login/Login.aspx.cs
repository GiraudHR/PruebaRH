using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Bolsa_De_Trabajo_Inst_RH_ASF.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            nUSUARIOS accion = new nUSUARIOS();
            accion.entUsuario.USUARIO = txtUsuario.Text;
            accion.entUsuario.PASS = txtPass.Text;
            accion.Validar_Usuario();
            if (accion.usuarioValido == false)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Usuario o contraseña incorrecto','error')</script>");
            }
            else
            {
                
                Response.Redirect("~/RH/Registro.aspx");
            }
        }
    }
}