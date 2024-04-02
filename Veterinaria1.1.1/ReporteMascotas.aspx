<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteMascotas.aspx.cs" Inherits="Veterinaria1._1._1.ReporteMascotas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .bg-azul-rey {
            background-color: #4169E1; /* Azul rey */
        }
        .shadowed-form {
            background-color: #ffffff; /* Fondo blanco */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <div class="container mt-5 d-flex justify-content-center">
        <div class="shadowed-form">
            <form id="form3" runat="server">
                <h2 class="bg-secondary text-white p-2 mb-4">Ingresar Mascotas</h2>
                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" CssClass="table table-striped">
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                <div class="form-group">
                    <asp:Label ID="lblNombreMascota" runat="server" Text="Nombre de Mascota"></asp:Label>
                    <asp:TextBox ID="txtNombreMascota" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblTipoMascota" runat="server" Text="Tipo de Mascota"></asp:Label>
                    <asp:TextBox ID="txtTipoMascota" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblComidaFavorita" runat="server" Text="Comida Favorita"></asp:Label>
                    <asp:TextBox ID="txtComidaFavorita" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnIngresar3" runat="server" OnClick="btnIngresarMascota_Click" Text="Ingresar" CssClass="btn btn-primary" />
                    <asp:Button ID="btnModificar3" runat="server" OnClick="btnModificar3_Click" Text="Modificar" CssClass="btn btn-success" />
                    <asp:Button ID="btnEliminar3" runat="server" OnClick="btnEliminar3_Click" Text="Eliminar" CssClass="btn btn-danger" />
                </div>
                <p>
                    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                </p>
            </form>
        </div>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
