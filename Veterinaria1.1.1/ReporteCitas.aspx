<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteCitas.aspx.cs" Inherits="Veterinaria1._1._1.ReporteUsuario" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 421px;
            width: 1098px;
        }
    </style>
</head>
<body style="height: 491px">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Nombre de Mascota"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtMascota" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label runat="server" Text="Fecha"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Doctor"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtDoctor" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnIngresar2" runat="server" Height="21px" OnClick="btnIngresar2_Click" Text="Ingresar" Width="88px" />
            <asp:Button ID="btnModificar2" runat="server" Height="21px" style="margin-top: 0px" Text="Modificar" Width="88px" />
            <asp:Button ID="btnEliminar2" runat="server" Height="21px" Text="Eliminar" Width="88px" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
