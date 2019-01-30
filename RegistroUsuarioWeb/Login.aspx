<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RegistroUsuarioWeb.Login" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="form-row justify-content-center">
         <aside class="col-sm-6">
    <div class="text-center col-md-12"><img src="\Resources\user.png" width="150" height="150" class="align-content-center" ></div>
    
    <div id="login">

        <div class="container">
            <div id="login-row"  class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-12">
                    <div id="login-box" class="col-md-12">

                        <h3 class="text-center text-info">Login</h3>
                        <div class="form-group">
                            <label for="username" class="text-info">Username:</label><br>
                            <asp:TextBox ID="UserNameTextBox" type="username" Class="form-control input-group" runat="server"></asp:TextBox>
                           <%-- <input type="usertext" name="username" id="username" class="form-control">--%>
                        </div>
                        <div class="form-group">
                            <label for="password" class="text-info">Password:</label><br>
                            <asp:TextBox ID="PassawordTextBox" Type="password" Class="form-control input-group" runat="server"></asp:TextBox>
                            <%--<input type="passworktext" name="password" id="password" class="form-control">--%>
                        </div>
                        <div class="form-group col-md-12" style="text-align: center">
                            <%--<label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>--%>
                            <asp:Button ID="InicBtton" runat="server" Text="Iniciar sesion" class="btn btn-info btn" OnClick="InicBtton_Click" />
                            <a class="navbar-brand" href="http://localhost:49856/Default.aspx"></a>
                            <%--<input type="Cerrar " name="Cerrar" class="btn btn-primary btn-md" value="Cerrar ">--%>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div></aside>
         </div>
</asp:Content>
