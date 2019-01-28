<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="rUsuario.aspx.cs" Inherits="RegistroUsuarioWeb.Registro.rUsuario" %>

<asp:Content ID="content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <h1 style="font-size: x-large; font-family: 'Agency FB', Times, serif; font: bold;"><ins>Registro de Usuarios</ins></h1>
    </div>
    <div class="form-row justify-content-center">
        <aside class="col-sm-8">
            <div class="form-group">
                <div class="form-gruop col-md-12">
                    <div class="col-md-8">
                        <asp:Label ID="Label2" runat="server" Text="Id:"></asp:Label>
                        <asp:TextBox ID="IdTextBox" class="form-control col-md-3" Text="0" type="number" runat="server"></asp:TextBox>
                        <asp:Button ID="busscarButton" class="form-control btn btn-info col-md-2 btn-sm" runat="server" Text="Buscar" />
                    </div>
                </div>
                <div class="form-gruop col-md-12">
                    <label for="FechaTextbox" class="col-md-3 control-label input-sm">Fecha:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="FechaTextBox" type="date" runat="server" class="form-control input-sm"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-gruop col-md-12">
                    <label for="NombreTextbox" class="col-md-3 control-label input-sm">Nombre:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="NombreTextbox" runat="server" class="form-control input-sm"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-gruop col-md-12">
                    <label for="NombreUsuarioTextbox" class="col-md-3 control-label input-sm">Nombre Usuario:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="NombreUsuarioTextBox" runat="server" class="form-control input-sm"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-gruop col-md-12">
                    <label for="EmailTextbox" class="col-md-3 control-label input-sm">Email:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="EmailTextBox" runat="server" class="form-control input-sm"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-gruop col-md-12">
                    <label for="ClaveTextbox" class="col-md-3 control-label input-sm">Clave:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="ClaveTextBox" runat="server" class="form-control input-sm"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-gruop col-md-12">
                    <label for="CclaveTextbox" class="col-md-3 control-label input-sm">Confirmar Clave:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="CclaveTextBox" runat="server" class="form-control input-sm"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-gruop col-md-12">
                    <label for="TelefonoTextbox" class="col-md-3 control-label input-sm">Telefono:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="TelefonoTextBox" runat="server" class="form-control input-sm"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="form-gruop col-md-12">
                    <label for="CedulaTextbox" class="col-md-3 control-label input-sm">Cedula:</label>
                    <div class="col-md-8">
                        <asp:TextBox ID="CedulaTextBox" runat="server" class="form-control input-sm"></asp:TextBox>
                        <br />
                    </div>
                </div>
                <div class="text-center">
                    <asp:Button ID="NuevoBtton" runat="server" Text="Nuevo" class="btn btn-info btn" OnClick="NuevoBtton_Click" />
                    <asp:Button ID="GuardarBtton" runat="server" Text="Guardar" class="btn btn-Warning btn" OnClick="GuardarBtton_Click" />
                    <asp:Button ID="EliminarBtton" runat="server" Text="Eliminar" class="btn btn-success btn" OnClick="EliminarBtton_Click" />


                </div>
            </div>
        </aside>
    </div>
    <%--   </div>--%>
</asp:Content>
