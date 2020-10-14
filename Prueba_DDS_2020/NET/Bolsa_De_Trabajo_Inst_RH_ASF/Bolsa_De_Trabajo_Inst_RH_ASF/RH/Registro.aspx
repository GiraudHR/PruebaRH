<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Bolsa_De_Trabajo_Inst_RH_ASF.RH.Registro" %>

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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <link href="../css/sweetalert.css" rel="stylesheet" />
    <script src="../js/sweetalert.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="../js/scripts.js"></script>
</head>
<body class="sb-nav-fixed">

    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Registro</a>
        <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
        <ul class="navbar-nav ml-auto ml-md-0">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="../Login/Login.aspx">Salir</a>
                </div>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        <div class="sb-sidenav-menu-heading">Admin</div>
                        <a class="nav-link" href="#">
                            <div class="sb-nav-link-icon"><i class="far fa-save"></i></div>
                            Registrar
                        </a>
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Logeado como:</div>
                   
                   
                </div>
            </nav>
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid">
                    <form runat="server" id="formulario" name="myForm" class="formulario">
                        <div class="form-group" id="grupo-llave">
                            <asp:Label ID="lblLlaveUsuario" runat="server" Text="ID Usuario" for="txtLlaveUsuario" Class="mr-sm-2"></asp:Label>
                            <asp:TextBox ID="txtLlaveUsuario" runat="server" name="idUsuario" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                            <p class="error">*El campo ID Usuario es obligatorio*</p>
                            <p class="errorid">*Solo se aceptan digitos*</p>
                        </div>
                        <div class="form-group" id="grupo-nombre">
                            <asp:Label ID="lblNombre" runat="server" Text="Nombre" for="txtNombre" Class="mr-sm-2"></asp:Label>
                            <asp:TextBox ID="txtNombre" runat="server" name="nombre" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                            <p class="error">*El campo Nombre es obligatorio*</p>
                            <p class="errornombre">*Solo se aceptan letras*</p>
                        </div>
                        <div class="form-group" id="grupo-paterno">
                            <asp:Label ID="lblPaterno" runat="server" Text="Apellido Paterno" for="txtPaterno" Class="mr-sm-2"></asp:Label>
                            <asp:TextBox ID="txtPaterno" runat="server" name="primer_apellido" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                            <p class="error">El campo Apellido Paterno es obligatorio</p>
                            <p class="errorpadre">*Solo se aceptan letras*</p>
                        </div>
                        <div class="form-group" id="grupo-materno">
                            <asp:Label ID="lblMaterno" runat="server" Text="Apellido Materno" For="txtMaterno" Class="mr-sm-2"></asp:Label>
                            <asp:TextBox ID="txtMaterno" runat="server" name="segundo_apellido" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                            <p class="error">*El campo Apellido Materno es obligatorio*</p>
                            <p class="errormadre">*Solo se aceptan letras*</p>
                        </div>
                        <div class="form-group" id="grupo-fechanac">
                            <asp:Label ID="lblFechaNac" runat="server" Text="Fecha de nacimiento" For="txtFechaNac" Class="mr-sm-2"></asp:Label>
                            <asp:TextBox ID="txtFechaNac" runat="server" name="fechanac" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                            <p class="error">*El campo Fecha de Nacimiento es obligatorio*</p>
                        </div>
                        <div class="form-group" id="grupo-telefono">
                            <asp:Label ID="lblTelefono" runat="server" Text="Telefono" For="txtTelefono" Class="mr-sm-2"></asp:Label>
                            <asp:TextBox ID="txtTelefono" runat="server" name="telefono" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                            <p class="errornum">*Solo se aceptan digitos*</p>
                            <p class="error">*El campo Telefono es obligatorio*</p>
                        </div>
                        <div class="form-group" id="grupo-telefono2">
                             <asp:Label ID="lblTelefono2" runat="server" Text="Otro Telefono" For="txtTelefono2" Class="mr-sm-2"></asp:Label>
                             <asp:TextBox ID="txtTelefono2" runat="server" name="telefono2" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <div class="form-inline">
                                <asp:Label ID="lblCurp" runat="server" Text="Curp" For="txtCurp" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtCurp" runat="server" name="curp" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                                <asp:Label ID="lblRFC" runat="server" Text="RFC" For="txtRFC" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtRFC" runat="server" name="rfc" class="form-control mb-2 mr-sm-2"></asp:TextBox>

                                <asp:Label ID="lblPasaporte" runat="server" Text="Pasaporte" For="txtPasaporte" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtPasaporte" runat="server" name="pasaporte" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                                <asp:Label ID="lblCartilla" runat="server" Text="Cartilla" For="txtCartilla" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtCartilla" runat="server" name="cartilla" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-inline">
                                <asp:Label ID="lblGenero" runat="server" Text="Genero" For="txtGenero" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtGenero" runat="server" name="genero" class="form-control mb-2 mr-sm-2"></asp:TextBox>


                                <asp:Label ID="lblEdoCivil" runat="server" Text="Estado Civil" For="txtEdoCivil" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtEdoCivil" runat="server" name="edocivil" class="form-control mb-2 mr-sm-2"></asp:TextBox>

                                

                                <asp:Label ID="lblFechaAlta" runat="server" Text="Fecha de alta" For="txtFechaAlta" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtFechaAlta" runat="server" name="fechaalta" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="form-inline">
                                <asp:Label ID="lblCiudad" runat="server" Text="Ciudad" For="txtCiudad" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtCiudad" runat="server" name="ciudad" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                                <asp:Label ID="lblEdo" runat="server" Text="Estado" For="txtEstado" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtEdo" runat="server" name="estado" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                                <asp:Label ID="lblMun" runat="server" Text="Municipio" For="txtMun" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtMun" runat="server" name="municipio" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-inline">
                                <asp:Label ID="lblColonia" runat="server" Text="Colonia" For="txtColonia" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtColonia" runat="server" name="colonia" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                                <asp:Label ID="lblCalle" runat="server" Text="Calle" For="txtCalle" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtCalle" runat="server" name="calle" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                                <asp:Label ID="lblNumero" runat="server" Text="Numero" For="txtNumero" Class="mr-sm-2"></asp:Label>
                                <asp:TextBox ID="txtNumero" runat="server" name="numero" class="form-control mb-2 mr-sm-2"></asp:TextBox>
                            </div>
                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                <asp:Button ID="btnRegistrar" runat="server" Text="Guardar Datos" OnClick="btnEntrar_Click" CssClass="btn btn-primary" />
                            </div>
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
        </div>
        <script>
            $(document).ready(function () {
                const expresiones = {
                    usuario: /^[a-zA-Z6-9\_\-]{4,16}$/,
                    nombre: /^[a-zA-ZÀ-ÿ\s]{0,40}$/, //letras y espacios, pueden llevar acentos
                    numero: /^\d{0,10}$/   //7 a 14 numeros
                }
                //$("#txtFechaNac").datepicker();
                $(".errorid").hide();
                $("#txtLlaveUsuario").keyup(function (e) {
                    if (expresiones.numero.test($("#txtLlaveUsuario").val())) {
                        $(".errorid").hide(); 
                        $(".error").hide(); 
                    } else {
                        $(".errorid").show();
                    }
                });
                $(".errornum").hide();
                $("#txtTelefono").keyup(function (e) {
                    if (expresiones.numero.test($("#txtTelefono").val())) {
                        $(".errornum").hide(); 
                        $(".error").hide();
                    } else {
                        $(".errornum").show();
                    }
                });
                $(".errornombre").hide();
                $("#txtNombre").keyup(function (e) {
                    if (expresiones.nombre.test($("#txtNombre").val())) {
                        $(".errornombre").hide(); 
                        $(".error").hide();
                    } else {
                        $(".errornombre").show();
                    }
                });
                $(".errorpadre").hide();
                $("#txtPaterno").keyup(function (e) {
                    if (expresiones.nombre.test($("#txtPaterno").val())) {
                        $(".errorpadre").hide(); 
                        $(".error").hide();
                    } else {
                        $(".errorpadre").show();
                    }
                });
                $(".errormadre").hide();
                $("#txtMaterno").keyup(function (e) {
                    if (expresiones.nombre.test($("#txtMaterno").val())) {
                        $(".errormadre").hide(); 
                        $(".error").hide();
                    } else {
                        $(".errormadre").show();
                    }
                });
                
                

                $(".error").hide();
                $("#btnRegistrar").click(function (e) {

                    if ($("#txtLlaveUsuario").val() === '' && $("#txtNombre").val() === '' && $("#txtPaterno").val() === '' && $("#txtMaterno").val() === ''
                        && $("#txtFechaNac").val() === '' && $("#txtTelefono").val() === '' ) {
                        e.preventDefault();
                        swal("Error!", "Llene todos los campos requeridos", "error");
                        $(".error").show();
                    }
                });

                function registroGuardado() {
                    swal("Error!", "Llene todos los campos requeridos", "error");
                    window.location = "Experiencia.aspx";
                }
            });
        </script>
</body>
</html>
