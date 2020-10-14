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
    public class dUSUARIOS
    {
        public eUSUARIOS entidadUsuario { get; set; }
        private string stringconexion;
        SqlConnection conexion;

        public dUSUARIOS()
        {
            stringconexion = "Data Source=(local)\\SQLEXPRESS;Initial Catalog=BOLSA_EXAMEN;Integrated Security=True";
            entidadUsuario = new eUSUARIOS();
        }

        public bool Crear_Usuario(string usuario, string pass, string correo, DateTime fecha)
        {
            bool verificar = false;
            SqlCommand comando = new SqlCommand("INSERTAR_USUARIO", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@Usuario", usuario);
            comando.Parameters.AddWithValue("@Pass", pass);
            comando.Parameters.AddWithValue("@Email", correo);
            comando.Parameters.AddWithValue("@Fecha", fecha);

            try
            {
                AbrirConexcion();
                comando.ExecuteNonQuery();
                CerrarConexion();
                verificar = true;
            }
            catch (Exception)
            {

                throw;
            }
            return verificar;
        }

        public DataSet Leer_Usuario(int llave, string usuario) {
            DataSet datos = new DataSet();
            try
            {
                AbrirConexcion();
                SqlCommand comando = new SqlCommand("LEER_USUARIO", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@Llave_Usuario", llave);
                comando.Parameters.AddWithValue("@Usuario", usuario);
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

        public bool Editar_Usuario(int llave,string usuario, string pass, string correo, DateTime fecha)
        {
            bool verificar = false;
            SqlCommand comando = new SqlCommand("EDITAR_USUARIO",conexion);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@Llave",llave);
            comando.Parameters.AddWithValue("@Usuario",usuario);
            comando.Parameters.AddWithValue("@Password",pass);
            comando.Parameters.AddWithValue("@Email",correo);
            comando.Parameters.AddWithValue("@Fecha", fecha);

            try
            {
                AbrirConexcion();
                comando.ExecuteNonQuery();
                CerrarConexion();
                verificar = true;
            }
            catch (Exception)
            {

                throw;
            }
            return verificar;
        }

        public bool Borrar_Usuario(int Llave, string usuario)
        {
            bool validar = false;
            SqlCommand comando = new SqlCommand("ELIMINAR_USUARIO",conexion);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("Llave",Llave);
            try
            {
                AbrirConexcion();
                comando.ExecuteNonQuery();
                CerrarConexion();
                validar = true;
            }
            catch (Exception)
            {

                throw;
            }
            return validar;
        }

        public DataSet Validar_Usuario()
        {
            DataSet datosUsu = new DataSet();
            try
            {
                AbrirConexcion();
                SqlCommand comando = new SqlCommand("LOGIN_USUARIO", conexion);
                comando.CommandType = CommandType.StoredProcedure;
                comando.Parameters.AddWithValue("@Usuario",entidadUsuario.USUARIO);
                comando.Parameters.AddWithValue("@Pass",entidadUsuario.PASS);
                SqlDataAdapter guardardatos = new SqlDataAdapter(comando);
                guardardatos.Fill(datosUsu);
            }
            catch (Exception)
            {

                throw;
            }
            return datosUsu;
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
