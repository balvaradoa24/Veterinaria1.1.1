<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarMascotas.aspx.cs" Inherits="Veterinaria1._1._1.ModificarMascotas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form3" runat="server" class="container mt-5">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" CssClass="table table-striped" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="ID_Mascota" HeaderText="ID Mascota" />
            <asp:BoundField DataField="Nombre_Mascota" HeaderText="Nombre Mascota" />
            <asp:BoundField DataField="Tipo_Mascota" HeaderText="Tipo Mascota" />
            <asp:BoundField DataField="Comida_Favorita" HeaderText="Comida Favorita" />
        </Columns>
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
        <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="btn btn-warning" OnClick="btnModificar_Click" />
        <p>
            <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
        </p>
    </form>
    <!-- Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>




