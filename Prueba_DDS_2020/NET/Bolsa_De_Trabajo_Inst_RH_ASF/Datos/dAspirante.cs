using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data.SqlClient;
using System.Data;

namespace Datos
{
    public class dAspirante
    {

        public eAspirante entidadAspirante { get; set; }
        private string stringconexion;
        SqlConnection conexion;

        public dAspirante()
        {
            stringconexion = "Data Source=(local)\\SQLEXPRESS;Initial Catalog=BOLSA_EXAMEN;Integrated Security=True";
            entidadAspirante = new eAspirante();
        }


        public DataSet obtenerAspirante()
        {
            DataSet datos = new DataSet();
            try
            {
                AbrirConexcion();
                SqlCommand comando = new SqlCommand("MOSTRAR_ASPIRANTE", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter datosaspirante = new SqlDataAdapter(comando);
                datosaspirante.Fill(datos);
                CerrarConexion();
            }
            catch (Exception)
            {

                throw;
            }
            return datos;
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
