<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteUsuario.aspx.cs" Inherits="Veterinaria1._1._1.ReporteUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                    <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                    <asp:BoundField DataField="contrasena" HeaderText="contrasena" SortExpression="contrasena" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:reportUsuariConnectionString %>" SelectCommand="SELECT * FROM [usuario]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
        </div>
        <p>
            <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="txnombre" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:TextBox ID="txtcontrasena" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btmIngresar" runat="server" OnClick="btmIngresar_Click" Text="Ingresar" />
            <asp:Button ID="btmModificar" runat="server" OnClick="Button2_Click" Text="Modificar" />
            <asp:Button ID="btmEliminar" runat="server" OnClick="btmEliminar_Click" Text="Eliminar" />
        </p>
    </form>
</body>
</html>
