using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Bolsa_De_Trabajo_Inst_RH_ASF.RH
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            Session["lasid"] = 0;
            nDATOS_PERSONALES accion = new nDATOS_PERSONALES();
            accion.entAspirante.LLAVE_USUARIO = Int64.Parse(txtLlaveUsuario.Text);
            accion.entAspirante.NOMBRE = txtNombre.Text;
            accion.entAspirante.PATERNO = txtPaterno.Text;
            accion.entAspirante.MATERNO = txtMaterno.Text;
            accion.entAspirante.CIUDAD = txtCiudad.Text;
            accion.entAspirante.CALLE = txtCalle.Text;
            accion.entAspirante.NUMERO = txtNumero.Text;
            accion.entAspirante.COLONIA = txtColonia.Text;
            accion.entAspirante.TELEFONO = txtTelefono.Text;
            accion.entAspirante.OTRO_TEL = txtTelefono2.Text;
            accion.entAspirante.FECHA_NAC = DateTime.Parse(txtFechaNac.Text);
            accion.entAspirante.CURP = txtCurp.Text;
            accion.entAspirante.RFC = txtRFC.Text;
            accion.entAspirante.PASAPORTE = txtPasaporte.Text;
            accion.entAspirante.CARTILLA = txtCartilla.Text;
            accion.entAspirante.GENERO = txtGenero.Text;
            accion.entAspirante.EDO_CIVIL = txtEdoCivil.Text;
            accion.entAspirante.FECHA_ALTA = DateTime.Parse(txtFechaAlta.Text);
            accion.entAspirante.MUN = txtMun.Text;
            accion.entAspirante.EDO = txtEdo.Text;
            accion.Validar_Registro();
            if (accion.idRegistro == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Error!','Datos no guardados','error');</script>");
            }
            else
            {
                Session["lastid"] = accion.idRegistro;
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Listo!', 'Datos Guardados', 'success');"+
                   " window.location = Experiencia.aspx;</script>");
                Response.Redirect("Experiencia.aspx");
            }
        }
    }
}