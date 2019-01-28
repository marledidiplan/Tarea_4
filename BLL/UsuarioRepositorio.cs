using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;
using System.Web.UI;

namespace BLL
{
   public class UsuarioRepositorio : RepositorioBase<Usuario>
    {

    }
    //public static void Authentic(string email, string clave, Page page)
    //{
    //    RepositorioBase<Usuario> repo = new RepositorioBase<Usuario>();
    //    Usuario usu = new Usuario();
    //    Expression<Func<Usuario, bool>> filtrar = f => true;

    //    filtrar = m => m.Email.Equals(email) && m.Clave.Equals(clave);
    //    if (repo.GetList(filtrar).Count() != 0)
    //        FormsAuthentication.RedirectFromLoginPage(usu.Email, true);
            

    //}
}
