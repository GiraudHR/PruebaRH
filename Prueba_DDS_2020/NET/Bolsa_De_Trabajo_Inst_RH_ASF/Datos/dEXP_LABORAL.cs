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
    public class dEXP_LABORAL
    {
        public eEXP_LABORAL entidadExperiencia { get; set; }
        private string stringconexion;
        SqlConnection conexion;

        public dEXP_LABORAL()
        {
            stringconexion = "Data Source=(local)\\SQLEXPRESS;Initial Catalog=BOLSA_EXAMEN;Integrated Security=True";
            entidadExperiencia = new eEXP_LABORAL();
        }

        public bool Registrar_Experiencia()
        {
            DataTable idExperiencia = new DataTable();
            bool experienciaReg = false;
            try
            {
                AbrirConexion();
                SqlCommand comando = new SqlCommand("INSERTAR_EXPERIENCIA", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@llave_usuario", entidadExperiencia.LLAVE_USUARIO);
                comando.Parameters.AddWithValue("@llave_personal", entidadExperiencia.LLAVE_DATO_PERSONAL);
                comando.Parameters.AddWithValue("@puesto", entidadExperiencia.PUESTO );
                comando.Parameters.AddWithValue("@funciones", entidadExperiencia.FUNCIONES);
                comando.Parameters.AddWithValue("@empresa", entidadExperiencia.EMPRESA);
                comando.Parameters.AddWithValue("@noempleados", entidadExperiencia.NO_EMPLEADOS);
                comando.Parameters.AddWithValue("@fechainicio", entidadExperiencia.FECHA_INICIO);
                comando.Parameters.AddWithValue("@fechafin", entidadExperiencia.FECHA_FIN);
                comando.Parameters.AddWithValue("@retmenbruta", entidadExperiencia.RET_MENS_BRUTA);
                comando.Parameters.AddWithValue("@retmenneta", entidadExperiencia.RET_MENS_NETA);
                comando.Parameters.AddWithValue("@fechaalta", entidadExperiencia.FECHA_ALTA);
                comando.Parameters.AddWithValue("@pais", entidadExperiencia.PAIS);
                comando.ExecuteNonQuery();
                CerrarConexion();
                experienciaReg = true;
            }
            catch (Exception)
            {
                experienciaReg = false;
                throw;
            }
            return experienciaReg;
        }

        public DataSet ObtenerExperiencia()
        {
            DataSet datos = new DataSet();
            try
            {
                AbrirConexion();
                SqlCommand comando = new SqlCommand("MOSTRAR_EXPERIENCIA", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter guardardatos = new SqlDataAdapter(comando);
                guardardatos.Fill(datos);
                CerrarConexion();
            }
            catch (Exception)
            {

                throw;
            }

            return datos;
        }

        private SqlConnection AbrirConexion()
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
