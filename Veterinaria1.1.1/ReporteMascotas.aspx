<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteMascotas.aspx.cs" Inherits="Veterinaria1._1._1.ReporteMascotas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form3" runat="server">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <p>
            <asp:Label ID="lblNombreMascota" runat="server" Text="Nombre de Mascota"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtNombreMascota" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblTipoMascota" runat="server" Text="Tipo de Mascota"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtTipoMascota" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblComidaFavorita" runat="server" Text="Comida Favorita"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtComidaFavorita" runat="server" Text="Comida Favorita"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnIngresar3" runat="server" Height="21px" OnClick="btnIngresarMascota_Click" Text="Ingresar" Width="88px" />
            <asp:Button ID="btnModificar3" runat="server" Height="21px" style="margin-top: 0px" Text="Modificar" Width="88px" />
            <asp:Button ID="btnEliminar3" runat="server" Height="21px" Text="Eliminar" Width="88px" />
        </p>
        <p>&nbsp;</p>
    </form>
</body>
</html>


