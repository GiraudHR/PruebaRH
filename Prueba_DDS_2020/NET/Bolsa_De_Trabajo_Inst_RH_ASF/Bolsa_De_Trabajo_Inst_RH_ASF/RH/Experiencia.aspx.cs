using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;


namespace Bolsa_De_Trabajo_Inst_RH_ASF.RH
{
    public partial class Experiencia : System.Web.UI.Page
    {
        private string lastid { get { return (ViewState["lastid"] == null ? "" : (string)ViewState["lastid"]); } set { ViewState["lastid"] = value; } }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                recuperaID();
            }
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            nEXP_LABORAL accion = new nEXP_LABORAL();
            accion.entExperiencia.LLAVE_USUARIO = Int32.Parse(txtLlaveUsuario.Text);
            accion.entExperiencia.LLAVE_DATO_PERSONAL = Int64.Parse(txtLlavePersonal.Text);
            accion.entExperiencia.PUESTO = txtPuesto.Text;
            accion.entExperiencia.FUNCIONES = txtFunciones.Text;
            accion.entExperiencia.EMPRESA = txtEmpresa.Text;
            accion.entExperiencia.NO_EMPLEADOS = int.Parse(txtNumEmpleados.Text);
            accion.entExperiencia.FECHA_INICIO = txtFechaInicio.Text;
            accion.entExperiencia.FECHA_FIN = txtFechaFin.Text;
            accion.entExperiencia.RET_MENS_BRUTA = Int64.Parse(txtRetMenBruta.Text);
            accion.entExperiencia.RET_MENS_NETA = Int64.Parse(txtRetMenNeta.Text);
            accion.entExperiencia.FECHA_ALTA = DateTime.Parse(txtFechaAlta.Text);
            accion.entExperiencia.PAIS = txtPais.Text;
            accion.Validar_Registro();
            if (accion.RegistroValido == false)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Error!','Datos no guardados','error');</script>");

            }
            else
            {

                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script>swal('Listo!','Datos guardados','success');</script>");
                Response.Redirect("Aspirantes.aspx");
                LlenarGrid();
            }
        }

        private void recuperaID()
        {
            if (Session["lastid"] == null)
            {

                Response.Redirect("Registro.aspx");
            }
            else
            {
                int id = Convert.ToInt32(Session["lastid"]);
                txtLlavePersonal.Text = Convert.ToString(id);
                //txtLlavePersonal.Text = (string)Session["lastid"];
                //lastid = (string)Session["lastid"];
                lastid = Convert.ToString(id);
            }
        }

        private void LlenarGrid()
        {
            nEXP_LABORAL accion = new nEXP_LABORAL();
            gvPrueba.DataSource = accion.ObtenerExperiencia();
        }
    }
}