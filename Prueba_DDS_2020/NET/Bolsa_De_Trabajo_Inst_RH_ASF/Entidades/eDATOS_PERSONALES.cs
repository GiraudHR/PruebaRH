using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class eDATOS_PERSONALES
    {
        public Int64 LLAVE_DATO_PERSONAL { get; set; }
        public Int64 LLAVE_USUARIO { get; set; }
        public string NOMBRE { get; set; }
        public string PATERNO { get; set; }
        public string MATERNO { get; set; }
        public string CIUDAD { get; set; }
        public string CALLE { get; set; }
        public string NUMERO { get; set; }
        public string COLONIA { get; set; }
        public string TELEFONO { get; set; }
        public string OTRO_TEL { get; set; }
        public DateTime FECHA_NAC { get; set; }
        public string CURP { get; set; }
        public string RFC { get; set; }
        public string PASAPORTE { get; set; }
        public string CARTILLA { get; set; }
        public string GENERO { get; set; }
        public string EDO_CIVIL { get; set; }
        public DateTime FECHA_ALTA { get; set; }
        public string MUN { get; set; }
        public string EDO { get; set; }
    }
}
