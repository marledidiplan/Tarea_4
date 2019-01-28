<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cUsuario.aspx.cs" Inherits="RegistroUsuarioWeb.Consulta.cUsuario" %>

<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div
        class="text-center">
        <h1 style="font-size: x-large; font-family: 'Agency FB', Times, serif; font: bold;"><ins>Consulta de Usuarios</ins></h1>
    </div>
    <div class="form-group col-md-4" role="form">
        <asp:Label ID="Filtro" runat="server" Text="Filtro"></asp:Label>
        <asp:DropDownList ID="FiltroDropDownList" CssClass="form-group" runat="server">
            <asp:ListItem>TODO</asp:ListItem>
            <asp:ListItem>UsuarioId</asp:ListItem>
            <asp:ListItem> Nombre</asp:ListItem>
            <asp:ListItem>Usuario</asp:ListItem>
            <asp:ListItem>Email</asp:ListItem>
        </asp:DropDownList>

    </div>
    <div class="form-group-lg col-md-4">
        <asp:Label ID="Criterio" runat="server" Text="Criterio"></asp:Label>
        <asp:TextBox ID="CriterioTextbox"  runat="server"></asp:TextBox>
    </div>
    <div class="col-md-4">
          <asp:Button ID="BuscarBtton" runat="server" Text="Buscar" class="btn btn-info btn" OnClick="BuscarBtton_Click"/>
    </div>
    <div>
        <asp:GridView ID="uGridView" runat="server" class="table table-condensed table-bordered table-responsive" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="Gray" />
            <Columns>
                <asp:HyperLinkField ControlStyle-ForeColor="GrayText" 
                    DataNavigateUrlFields="UsuarioId" DataNavigateUrlFormatString="~/Registro/RegistroUsario.aspx?Id={0}" 
                    Text="Editar">
<ControlStyle ForeColor="GrayText"></ControlStyle>
                </asp:HyperLinkField>
                    
                <asp:BoundField HeaderText="UsuarioId" />
                <asp:BoundField HeaderText="Nombre" />
                <asp:BoundField HeaderText="Usuario" />
                <asp:BoundField HeaderText="Email" />
                    
            </Columns>
            <HeaderStyle BackColor="Window" Font-Bold="true" ForeColor="Blue" />
            <RowStyle BackColor="PaleGreen" />
        </asp:GridView>
    </div>

</asp:Content>
