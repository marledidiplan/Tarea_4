using BLL;
using Entidades;
using RegistroUsuarioWeb.Utilidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroUsuarioWeb.Registro
{
    public partial class rUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private Usuario LlenaClase()
        {
            Usuario usuario = new Usuario();
            usuario.UsuarioId = Util.ToInt(IdTextBox.Text);
            usuario.Nombre = NombreTextbox.Text;
            usuario.NombreUsuario = NombreUsuarioTextBox.Text;
            usuario.Clave = ClaveTextBox.Text;
            usuario.ConfirmarClave = CclaveTextBox.Text;
            usuario.Email = EmailTextBox.Text;
            DateTime date;
            bool resul = DateTime.TryParse(FechaTextBox.Text, out date);
            if (resul == true)
                usuario.Fecha = date;
            usuario.Telefono = TelefonoTextBox.Text;
            usuario.Cedula = CedulaTextBox.Text;

            return usuario;
        }

        protected void GuardarBtton_Click(object sender, EventArgs e)
        {
            bool paso = false;
            Usuario usuario = new Usuario();
            RepositorioBase<Usuario> repo = new RepositorioBase<Usuario>();

            usuario = LlenaClase();
            if (IdTextBox != null)
                paso = repo.Guardar(usuario);
            else
                paso = repo.Modificar(usuario);
            if (paso)
            {
                Response.Write("<script> alert('No se pudo Guardar')</script>");
               
                Clean();


            }
            else
            {
                Response.Write("<script> text('Guardado')</script>");
            }
        }

        protected void NuevoBtton_Click(object sender, EventArgs e)
        {

        }
       
        private void Clean()
        {
            IdTextBox.Text = "0";
            NombreTextbox.Text = "0";
            NombreUsuarioTextBox.Text = "0";
            ClaveTextBox.Text = "0";
            CclaveTextBox.Text = "0";
            EmailTextBox.Text = "0";
            FechaTextBox.Text = DateTime.Now.ToString("dd-MM-aa");
            TelefonoTextBox.Text = "0";
            CedulaTextBox.Text = "0";
        }

        protected void EliminarBtton_Click(object sender, EventArgs e)
        {

            int id = Util.ToInt(IdTextBox.Text);
            RepositorioBase<Usuario> repo = new RepositorioBase<Usuario>();

            if (repo.Eliminar(id))
            {
                Response.Write("<script>text('Eliminado')</script>");
                Clean();
            }
            else
            {
                Response.Write("<script> alert('No existe')</script>");
            }
        }

        

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            RepositorioBase<Usuario> repo = new RepositorioBase<Usuario>();
            Usuario usuario = new Usuario();
            usuario = repo.Buscar(Util.ToInt(IdTextBox.Text));

            if (usuario != null)
            {
                NombreTextbox.Text = usuario.Nombre;
                NombreUsuarioTextBox.Text = usuario.NombreUsuario;
                ClaveTextBox.Text = usuario.Clave;
                CclaveTextBox.Text = usuario.ConfirmarClave;
                EmailTextBox.Text = usuario.Email;
                TelefonoTextBox.Text = usuario.Telefono;
                CedulaTextBox.Text = usuario.Cedula;
            }
            else
            {
                Response.Write("<script> alert('No existe')</script>");
            }
        }
    }
}