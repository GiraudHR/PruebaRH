using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Entidades;

namespace Datos
{
    public class dDATOS_PERSONALES
    {
        public eDATOS_PERSONALES entidadAspirante { get; set; }
        private string stringconexion;
        SqlConnection conexion;

        public dDATOS_PERSONALES()
        {
            stringconexion = "Data Source=(local)\\SQLEXPRESS;Initial Catalog=BOLSA_EXAMEN;Integrated Security=True";
            entidadAspirante = new eDATOS_PERSONALES();
        }

        public int Registrar_Aspirante()
        {
            DataTable dt = new DataTable();
            int id = 0;
            bool aspiranteReg = false;
            try
            {
                AbrirConexcion();
                SqlCommand comando = new SqlCommand("INSERTAR_ASPIRANTE", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@llave_usuario", entidadAspirante.LLAVE_USUARIO);
                comando.Parameters.AddWithValue("@nombre", entidadAspirante.NOMBRE);
                comando.Parameters.AddWithValue("@paterno", entidadAspirante.PATERNO);
                comando.Parameters.AddWithValue("@materno", entidadAspirante.MATERNO);
                comando.Parameters.AddWithValue("@ciudad", entidadAspirante.CIUDAD);
                comando.Parameters.AddWithValue("@calle", entidadAspirante.CALLE);
                comando.Parameters.AddWithValue("@numero", entidadAspirante.NUMERO);
                comando.Parameters.AddWithValue("@colonia", entidadAspirante.COLONIA);
                comando.Parameters.AddWithValue("@telefono", entidadAspirante.TELEFONO);
                comando.Parameters.AddWithValue("@otrotel", entidadAspirante.OTRO_TEL);
                comando.Parameters.AddWithValue("@fechanac", entidadAspirante.FECHA_NAC);
                comando.Parameters.AddWithValue("@curp", entidadAspirante.CURP);
                comando.Parameters.AddWithValue("@rfc", entidadAspirante.RFC);
                comando.Parameters.AddWithValue("@pasaporte", entidadAspirante.PASAPORTE);
                comando.Parameters.AddWithValue("@cartilla", entidadAspirante.CARTILLA);
                comando.Parameters.AddWithValue("@genero", entidadAspirante.GENERO);
                comando.Parameters.AddWithValue("@edocivil", entidadAspirante.EDO_CIVIL);
                comando.Parameters.AddWithValue("@fechaalta", entidadAspirante.FECHA_ALTA);
                comando.Parameters.AddWithValue("@mun", entidadAspirante.MUN);
                comando.Parameters.AddWithValue("@edo", entidadAspirante.EDO);
                SqlDataAdapter datos = new SqlDataAdapter(comando);
                datos.Fill(dt);
                if (dt == null || dt.Rows.Count == 0)
                {
                    id = 0;
                }
                else {
                    id = Convert.ToInt32(dt.Rows[0]["id"].ToString());
                }
                CerrarConexion();
                aspiranteReg = true;
            }
            catch (Exception)
            {
                aspiranteReg = false;
                throw;
            }
            return id;
        }

        

        private SqlConnection AbrirConexcion()
        {
            conexion = new SqlConnection(stringconexion);
            if (conexion.State == ConnectionState.Closed)
                conexion.Open();
            return conexion;
        }

        private SqlConnection CerrarConexion()
        {
            if (conexion.State == ConnectionState.Open)
                conexion.Close();
            return conexion;
        }
    }
}
