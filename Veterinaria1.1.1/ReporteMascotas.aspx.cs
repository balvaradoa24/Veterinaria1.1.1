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
        string conexion3 = "Data Source=DESKTOP-D3L7VF1\\SQLEXPRESS;Initial Catalog=Veterinaria;Integrated Security=True";

        protected void btnIngresarMascota_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtNombreMascota.Text) || string.IsNullOrWhiteSpace(txtTipoMascota.Text) || string.IsNullOrWhiteSpace(txtComidaFavorita.Text))
            {
                lblMensaje.Text = "Todos los campos son obligatorios."; 
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                return; 
            }

            try
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
                lblMensaje.Text = "Mascota ingresada con éxito.";
                lblMensaje.ForeColor = System.Drawing.Color.Green; 
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al ingresar la mascota. Detalle del error: " + ex.Message;
                lblMensaje.ForeColor = System.Drawing.Color.Red;
            }
        }


        protected void btnModificar3_Click(object sender, EventArgs e)
        {
       
            if (GridView1.SelectedRow == null)
            {
                lblMensaje.Text = "Por favor, seleccione una mascota para modificar.";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string idMascota = GridView1.SelectedRow.Cells[1].Text;

         
            string nuevoNombre = txtNombreMascota.Text;
            string nuevoTipo = txtTipoMascota.Text;
            string nuevaComidaFavorita = txtComidaFavorita.Text;

            if (string.IsNullOrWhiteSpace(nuevoNombre) || string.IsNullOrWhiteSpace(nuevoTipo) || string.IsNullOrWhiteSpace(nuevaComidaFavorita))
            {
                lblMensaje.Text = "Todos los campos son obligatorios.";
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                return;
            }

            try
            {
                using (SqlConnection cn = new SqlConnection(conexion3))
                {
                    cn.Open();

                    string query = "UPDATE Mascotas SET Nombre = @Nombre, Tipo = @Tipo, ComidaFavorita = @ComidaFavorita WHERE IdMascota = @IdMascota";

                    // Crear y configurar el comando SQL
                    using (SqlCommand cmd = new SqlCommand(query, cn))
                    {
                        cmd.Parameters.AddWithValue("@Nombre", nuevoNombre);
                        cmd.Parameters.AddWithValue("@Tipo", nuevoTipo);
                        cmd.Parameters.AddWithValue("@ComidaFavorita", nuevaComidaFavorita);
                        cmd.Parameters.AddWithValue("@IdMascota", idMascota);

                        // Ejecutar la consulta SQL de actualización
                        cmd.ExecuteNonQuery();
                    }

                    // Cerrar la conexión
                    cn.Close();
                }

                // Limpiar el GridView y mostrar un mensaje de éxito
                LimpiarGrid();
                lblMensaje.Text = "Mascota modificada con éxito.";
                lblMensaje.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {
                // Manejar la excepción y mostrar un mensaje de error
                lblMensaje.Text = "Error al modificar la mascota. Detalle del error: " + ex.Message;
                lblMensaje.ForeColor = System.Drawing.Color.Red;
            }
        }



        protected void btnEliminar3_Click(object sender, EventArgs e)
        {
             using (SqlConnection cn = new SqlConnection(conexion3))
             {
                 SqlCommand cmd = new SqlCommand("delete from Mascotas where Nombre_Mascota = " + txtNombreMascota.Text, cn);
                 cmd.CommandType = CommandType.Text;

                 cn.Open();
                 cmd.ExecuteNonQuery();
             }
            LimpiarGrid();
            lblMensaje.Text = "Mascota Eliminada con éxito.";
        }

        protected void LimpiarGrid() 
        {
            GridView1.DataSource = null;
            GridView1.DataBind();

        }
    }
}


