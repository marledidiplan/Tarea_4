using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        [Key]
        public int UsuarioId { get; set; } 
        public string Nombre { get; set; }
        public string NombreUsuario { get; set; }
        public string Clave { get; set; }
        public string ConfirmarClave { get; set; }
        public string Email { get; set; }
        public DateTime Fecha { get; set; }
        public string Telefono { get; set; }
        public string Cedula { get; set; }

        public Usuario()
        {
            Nombre = string.Empty;
            NombreUsuario = string.Empty;
            Clave = string.Empty;
            ConfirmarClave = string.Empty;
            Email = string.Empty;
            Fecha = DateTime.Now;
            Telefono = string.Empty;
            Cedula = string.Empty;
            
        }
    }
}
