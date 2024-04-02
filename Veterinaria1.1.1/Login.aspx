<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Veterinaria1._1._1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .login-container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            max-width: 400px;
            width: 100%;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }
    </style>
</head>
<body class="bg-light">
    <div class="login-container">
        <div class="card">
            <h5 class="card-header bg-primary text-white">Iniciar Sesión</h5>
            <div class="card-body">
                <form id="formLogin" runat="server">
                    <div class="form-group">
                        <label for="txtUsuario">Usuario:</label>
                        <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="txtContraseña">Contraseña:</label>
                        <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password" CssClass="form-control" />
                    </div>
                    <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar Sesión" OnClick="btnIniciarSesion_Click" CssClass="btn btn-primary btn-block" />
                    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                </form>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
