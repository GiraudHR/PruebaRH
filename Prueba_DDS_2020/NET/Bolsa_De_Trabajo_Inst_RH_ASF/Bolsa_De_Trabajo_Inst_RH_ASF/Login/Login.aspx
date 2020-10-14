<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bolsa_De_Trabajo_Inst_RH_ASF.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Login</title>
    <link href="../css/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <link href="../css/sweetalert.css" rel="stylesheet" />
    <script src="../js/sweetalert.min.js"></script>
    <script src="../js/scripts.js"></script>
    
</head>
<body class="bg-primary">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">Login</h3>
                                </div>
                                <div class="card-body">
                                    <form id="form1" runat="server" name="myForm">
                                        <div class="form-group">
                                            <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
                                            <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:Label ID="lblPass" runat="server" Text="Contraseña"></asp:Label>
                                            <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                            <div class="form-group">
                                                <div class="form-check">
                                                    <input type="checkbox" id="mostrar_contrasena" title="clic para mostrar contraseña" class="" />
                                                    &nbsp;&nbsp;Mostrar Contraseña
                                                </div>
                                            </div>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <asp:Button ID="btnEntrar" runat="server" Text="Login" OnClick="btnEntrar_Click" CssClass="btn btn-primary btn-block" />
                                            </div>
                                            <div></div>
                                        </div>
                                        <div></div>
                                    </form>
                                </div>
                                <div class="card-footer text-center">
                                    <div class="small"><a href="register.html">Need an account? Sign up!</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    <div id="layoutAuthentication_footer">
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Your Website 2020</div>
                    <div>
                        <a href="#">Privacy Policy</a>
                        &middot;
                               
                            <a href="#">Terms &amp; Conditions</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    </div>
    
    


    <script>
        $(document).ready(function () {
            $("#btnEntrar").click(function (e) {

                if ($("#txtUsuario").val() === '' || $("#txtPass").val() === '') {
                    e.preventDefault();
                    /*$('<div></div>').html('Ingrese un nombre de usuario y contraseña').dialog({
                        open: function () { $(".ui-dialog-titlebar").hide(); },
                        resizable: false,
                        modal: true,
                        buttons: {
                            'OK': function () {
                                $(this).dialog('close');
                            }

                        }
                    })*/
                    swal("Error!","Ingrese un nombre de usuario y su contraseña","error");
                }
            });

            $('#mostrar_contrasena').click(function () {
                if ($('#mostrar_contrasena').is(':checked')) {
                    $('#txtPass').attr('type', 'text');
                } else {
                    $('#txtPass').attr('type', 'password');
                }
            });
        });

    </script>
</body>
</html>
