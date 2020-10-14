<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aspirantes.aspx.cs" Inherits="Bolsa_De_Trabajo_Inst_RH_ASF.RH.Aspirantes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script  src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css" />
    <script  src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <link href="../css/sweetalert.css" rel="stylesheet" />
    <script src="../js/sweetalert.min.js"></script>
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="tablaAspirantes" class="display nowrap">
                <thead>
                    <tr>
                        <td></td>
                        <td>Nombre Aspirante</td>
                        <td>Apellido Paterno</td>
                        <td>Apellido Materno</td>
                        <td>Fecha de Nacimiento</td>
                    </tr>
                </thead>
                <tbody id="cuerpo">
                </tbody>
            </table>
        </div>
        <div>
            <asp:Button ID="btnXML" runat="server" Text="Crear XML" OnClick="btnXML_Click" />
            <asp:Button ID="bntReporte" runat="server" Text="Imprimir Reporte" />
        </div>
        <div>
            <a href="FormatoXML.aspx">Mostrar XML</a>
        </div>
    </form>

    <script>
        $(document).ready(function () {
            // this ajax gets all of the data at once based on Criteria
            $.ajax({
                type: 'POST',
                url: 'Aspirantes.aspx/cargaAspirantes',
                contentType: "application/json; charset=utf-8",
                dataType: 'json',
                success: function (res) {
                    console.log(res);
                    var listaAspirantes = eval(res.d);
                    $("#tablaAspirantes").DataTable(
                        {
                            data: listaAspirantes,
                            "columns": [
                            {'targets': 0,
                               'searchable':false,
                               'orderable':false,
                               'className': 'dt-body-center',
                               'render': function (data, type, full, meta){
                                   return '<input type="checkbox" name="id[]" id="checkbox" value="' + $('<div/>').text(data).html() + '">';
                               }},
                            { "data": "NOMBRE" },
                            { "data": "PATERNO" },
                            { "data": "MATERNO" },
                            { "data": "FECHA_NAC" }
                            ]
                        }
                    );
                    
                }
            });


            $("#checkbox").click(function (e) {
                    //e.preventDefault();
                    swal("Error!", "Llene todos los campos requeridos", "error");
                    //$(".error").show();
                
            });
        });
    </script>
</body>
</html>
