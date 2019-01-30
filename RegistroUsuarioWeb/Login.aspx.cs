using BLL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroUsuarioWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void InicBtton_Click(object sender, EventArgs e)
        {
            Usuario user = new Usuario();
            UsuarioRepositorio repositorio = new UsuarioRepositorio();
            if(repositorio.Authentic(UserNameTextBox.Text, PassawordTextBox.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(user.NombreUsuario, true);
            } 
        }
    }
}