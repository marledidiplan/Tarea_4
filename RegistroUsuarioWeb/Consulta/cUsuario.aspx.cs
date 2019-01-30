using BLL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroUsuarioWeb.Consulta
{
    public partial class cUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarBotton_Click(object sender, EventArgs e)
        {
            Expression<Func<Usuario, bool>> filtro = m => true;
            RepositorioBase<Usuario> repositorio = new RepositorioBase<Usuario>();

            int id;
            switch (FiltroDropDownList.SelectedIndex)
            {
                case 0:
                    repositorio.GetList(d => true);
                    break;
                case 1:
                    id = Utilidades.Util.ToInt(CriterioTextbox.Text);
                    filtro = f => f.UsuarioId == id;
                    break;
                case 2:
                    filtro = d => d.Nombre.Contains(CriterioTextbox.Text);
                    break;
                case 3:
                    filtro = d => d.NombreUsuario.Contains(CriterioTextbox.Text);
                    break;
                case 4:
                    filtro = d => d.Clave.Contains(CriterioTextbox.Text);
                    break;
                case 5:
                    filtro = d => d.ConfirmarClave.Contains(CriterioTextbox.Text);
                    break;
                case 6:
                    filtro = d => d.ConfirmarClave.Contains(CriterioTextbox.Text);
                    break;
                case 7:
                    filtro = d => d.Email.Contains(CriterioTextbox.Text);
                    break;
              
                


            }
            uGridView.DataSource = repositorio.GetList(filtro);
            uGridView.DataBind();
        }
    }
}