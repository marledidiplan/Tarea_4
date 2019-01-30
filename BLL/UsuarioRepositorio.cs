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


        public bool Authentic(string nombreUsuario, string clave)
        {
            Expression<Func<Usuario, bool>> filtrar = f => true;
            bool paso = false;
            filtrar = m => m.NombreUsuario.Equals(nombreUsuario) && m.Clave.Equals(clave);
            if (this.GetList(filtrar).Count() != 0)
            {
                paso = true;
            }

            return paso;
        }
    }
}


