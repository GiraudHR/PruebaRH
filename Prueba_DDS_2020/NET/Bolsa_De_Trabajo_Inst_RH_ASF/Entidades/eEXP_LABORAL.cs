using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class eEXP_LABORAL
    {
        public int LLAVE_EXP_LAB { get; set; }
        public Int64 LLAVE_USUARIO { get; set; }
        public string PUESTO { get; set; }
        public string FUNCIONES { get; set; }
        public string EMPRESA { get; set; }
        public int NO_EMPLEADOS { get; set; }
        public string FECHA_INICIO { get; set; }
        public string FECHA_FIN { get; set; }
        public Int64 RET_MENS_BRUTA { get; set; }
        public Int64 RET_MENS_NETA { get; set; }
        public DateTime FECHA_ALTA { get; set; }
        public string PAIS { get; set; }
        public Int64 LLAVE_DATO_PERSONAL { get; set; }
    }
}
