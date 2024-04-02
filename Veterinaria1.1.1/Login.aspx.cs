using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Veterinaria1._1._1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text;
            string contraseña = txtContraseña.Text;

            // Aquí deberías incluir la lógica para verificar el usuario y la contraseña
            // Por ejemplo, puedes compararlos con valores almacenados en una base de datos

            if (usuario == "admin" && contraseña == "123456")
            {
                // Si las credenciales son válidas, redirige al usuario a otra página
                Response.Redirect("ReporteMascotas.aspx");
            }
            else
            {
                lblMensaje.Text = "Usuario o contraseña incorrectos.";
            }
        }
    }
}
