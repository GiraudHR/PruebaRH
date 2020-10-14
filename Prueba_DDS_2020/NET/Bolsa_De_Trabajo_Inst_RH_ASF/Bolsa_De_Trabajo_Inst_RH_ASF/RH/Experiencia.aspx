<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Experiencia.aspx.cs" Inherits="Bolsa_De_Trabajo_Inst_RH_ASF.RH.Experiencia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Registro</title>
    <link href="../css/styles.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <link href="../css/sweetalert.css" rel="stylesheet" />
    <script src="../js/sweetalert.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="../js/scripts.js"></script>
</head>
<body>
    <main>
        <div class="container-fluid">
            <form runat="server" id="formulario" name="myForm" class="formulario">
                <div class="form-group" id="grupo-llaveusuario">
                    <asp:Label ID="lblLlaveUsuario" runat="server" Text="ID Usuario" for="txtLlaveUsuario" Class="mr-sm-2"></asp:Label>
                    <asp:TextBox ID="txtLlaveUsuario" runat="server" name="idUsuario" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                </div>
                <div class="form-group" id="grupo-llavepersonal">
                    <asp:Label ID="lblLlavePersonal" runat="server" Text="ID Personal" for="txtLlavePersonal" Class="mr-sm-2"></asp:Label>
                    <asp:TextBox ID="txtLlavePersonal" runat="server" name="idPersonal" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                </div>
                <div class="form-group" id="grupo-puesto">
                    <asp:Label ID="lblPuesto" runat="server" Text="Puesto" for="txtPuesto" Class="mr-sm-2"></asp:Label>
                    <asp:TextBox ID="txtPuesto" runat="server" name="puesto" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                    <p class="error">*El campo Puesto es obligatorio*</p>
                </div>
                <div class="form-group" id="grupo-funciones">
                    <asp:Label ID="lblFunciones" runat="server" Text="Funciones" for="txtFunciones" Class="mr-sm-2"></asp:Label>
                    <asp:TextBox ID="txtFunciones" runat="server" name="funciones" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                    <p class="error">El campo Funciones es obligatorio</p>
                </div>
                <div class="form-group" id="grupo-empresa">
                    <asp:Label ID="lblEmpresa" runat="server" Text="Empresa" For="txtEmpresa" Class="mr-sm-2"></asp:Label>
                    <asp:TextBox ID="txtEmpresa" runat="server" name="empresa" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                    <p class="error">*El campo Empresa es obligatorio*</p>
                </div>
                <div class="form-group" id="grupo-numempleados">
                    <asp:Label ID="lblNumEmpleados" runat="server" Text="Numero de Empleados" For="txtNumEmpleados" Class="mr-sm-2"></asp:Label>
                    <asp:TextBox ID="txtNumEmpleados" runat="server" name="numempleados" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                </div>
                <div class="form-group" id="grupo-fechainicio">
                    <asp:Label ID="lblFechaInicio" runat="server" Text="Fecha de Inicio" For="txtFechaInicio" Class="mr-sm-2"></asp:Label>
                    <asp:TextBox ID="txtFechaInicio" runat="server" name="fechainicio" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                    <p class="error">*El campo Fecha dE Inicio es obligatorio*</p>
                </div>
                <div class="form-group" id="grupo-fechafin">
                    <asp:Label ID="lblFechaFin" runat="server" Text="Fecha Final" For="txtFechaFin" Class="mr-sm-2"></asp:Label>
                    <asp:TextBox ID="txtFechaFin" runat="server" name="fechafin" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                </div>

                <div class="form-group" id="grupo-fechaalta">
                    <asp:Label ID="lblFechaAlta" runat="server" Text="Fecha de Altal" For="txtFechaAlta" Class="mr-sm-2"></asp:Label>
                    <asp:TextBox ID="txtFechaAlta" runat="server" name="fechaalta" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                </div>

                <div class="form-group">
                    <div class="form-inline">
                        <asp:Label ID="lblRetMenBruta" runat="server" Text="Retencion Mensual Bruta" For="txtRetMenBruta" Class="mr-sm-2"></asp:Label>
                        <asp:TextBox ID="txtRetMenBruta" runat="server" name="retmenbruta" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                        <asp:Label ID="lblRetMenNeta" runat="server" Text="Retencion Mensual Neta" For="txtRetMenNeta" Class="mr-sm-2"></asp:Label>
                        <asp:TextBox ID="txtRetMenNeta" runat="server" name="retmenneta" class="form-control mb-2 mr-sm-2"></asp:TextBox>

                        <asp:Label ID="lblPais" runat="server" Text="Pais" For="txtPais" Class="mr-sm-2"></asp:Label>
                        <asp:TextBox ID="txtPais" runat="server" name="pais" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                    </div>
                    <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                        <asp:Button ID="btnRegistrar" runat="server" Text="Guardar Datos" OnClick="btnEntrar_Click" CssClass="btn btn-primary" />
                    </div>
                </div>
                <div>
                    <p>Experiencia</p>
                    
                </div>
                <div>
                    <asp:GridView ID="gvExperiencias" runat="server" AutoGenerateColumns="False" >
                        <Columns>
                            <asp:BoundField DataField="Empresa" HeaderText="Empresa" />
                            <asp:BoundField DataField="Puesto" HeaderText="Puesto" />
                            <asp:BoundField DataField="fecha_inicio" HeaderText="Fecha de Inicio" />
                            <asp:BoundField DataField="fecha_fin" HeaderText="Fecha de Fin" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div>
                    <asp:GridView ID="gvPrueba" runat="server" ></asp:GridView>
                </div>
            </form>
        </div>
    </main>

    <footer class="py-4 bg-light mt-auto">
        <div class="container-fluid">
            <div class="d-flex align-items-center justify-content-between small">
                <div class="text-muted">Copyright &copy; Registro ASF</div>
            </div>
        </div>
    </footer>

    <script>
        $(document).ready(function () {

            //$("#txtFechaNac").datepicker();

            $(".error").hide();
            $("#btnRegistrar").click(function (e) {

                if ($("#txtLlaveUsuario").val() === '' && $("#txtPuesto").val() === '' && $("#txtFunciones").val() === '' && $("#txtEmpresa").val() === ''
                    && $("#txtFechaInicio").val() === '') {
                    e.preventDefault();
                    swal("Error!", "Llene todos los campos requeridos", "error");
                    $(".error").show();
                }
            });
        });
    </script>
</body>
</html>
