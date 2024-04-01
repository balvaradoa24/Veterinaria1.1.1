using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;


namespace Veterinaria1._1._1
{
    public partial class ReporteMascotas : System.Web.UI.Page
    {
        string conexion3 = "Data Source=DESKTOP-D3L7VF1\\SQLEXPRESS;Initial Catalog=ReporteMascotas;Integrated Security=True";

        protected void btnIngresarMascota_Click(object sender, EventArgs e)
        {


            using (SqlConnection cn = new SqlConnection(conexion3))
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("INSERT into Mascotas values  (" + txtNombreMascota.Text + ",'" + txtTipoMascota.Text + "','" + txtComidaFavorita.Text + " ')", cn);
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
                cn.Close();

            }
                LimpiarGrid();
        }

        protected void btnModificar3_Click(object sender, EventArgs e)

        {
            /*
                        using (SqlConnection cn = new SqlConnection(conexion3))
                        {
                            SqlCommand cmd = new SqlCommand("update Mascotas set Mascota = '" + txtNombreMascota.Text + ",',contrasena = '" + txtFecha.Text + "' where id =" + txtDoctor.Text + "", cn);
                            cmd.CommandType = CommandType.Text;

                            cn.Open();
                            cmd.ExecuteNonQuery();
                        }*/
        }


        protected void btnEliminar3_Click(object sender, EventArgs e)
        {
            /* using (SqlConnection cn = new SqlConnection(conexion3))
             {
                 SqlCommand cmd = new SqlCommand("delete from c itas where Mascota = " + txtMascota.Text, cn);
                 cmd.CommandType = CommandType.Text;

                 cn.Open();
                 cmd.ExecuteNonQuery();
             }*/
        }

        protected void LimpiarGrid() 
        {
            GridView1.DataSource = null;
            GridView1.DataBind();

        }
    }
}


