using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;


namespace Veterinaria1._1._1
{
    public partial class ReporteUsuario : System.Web.UI.Page
    {
        string conexion = "Data Source=DESKTOP-VCSUPFU\\SQLEXPRESS;Initial Catalog=reportUsuari;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection(conexion))
            {
                SqlCommand cmd = new SqlCommand("update usuari set usuario = '" + txnombre.Text + "',contrasena = '" + txtcontrasena.Text + "' where id =" + txtid.Text + "", cn);
                cmd.CommandType = CommandType.Text;

                cn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        protected void btmIngresar_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection(conexion))
            {
                SqlCommand cmd = new SqlCommand("insert into usuari(id,usuario,contrasena) values  (" + txtid.Text + ",'" + txnombre.Text + "','" + txtcontrasena.Text + " ')", cn);
                cmd.CommandType = CommandType.Text;

                cn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        protected void btmEliminar_Click(object sender, EventArgs e)
        {
            using (SqlConnection cn = new SqlConnection(conexion))
            {
                SqlCommand cmd = new SqlCommand("delete from usuari where id = " + txtid.Text, cn);
                cmd.CommandType = CommandType.Text;

                cn.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
