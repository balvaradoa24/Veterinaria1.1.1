using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Veterinaria1._1._1
{
    public partial class ModificarMascotas : System.Web.UI.Page
    {
        string conexion4 = "Data Source=DESKTOP-D3L7VF1\\SQLEXPRESS;Initial Catalog=Veterinaria;Integrated Security=True";

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string idMascota = GridView1.SelectedRow.Cells[1].Text;

            ObtenerDetallesMascota(idMascota);
        }

        protected void btnModificar_Click(object sender, EventArgs e)
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
                using (SqlConnection cn = new SqlConnection(conexion4))
                {
                    cn.Open();

                    string query = "UPDATE Mascotas SET Nombre_Mascota = @NombreMascota, Tipo_Mascota = @TipoMascota, Comida_Favorita = @ComidaFavorita WHERE ID_Mascota = @IdMascota";

                    using (SqlCommand cmd = new SqlCommand(query, cn))
                    {
                        cmd.Parameters.AddWithValue("@NombreMascota", nuevoNombre);
                        cmd.Parameters.AddWithValue("@TipoMascota", nuevoTipo);
                        cmd.Parameters.AddWithValue("@ComidaFavorita", nuevaComidaFavorita);
                        cmd.Parameters.AddWithValue("@IdMascota", idMascota);

                        cmd.ExecuteNonQuery();
                    }

                    // Cerrar la conexión
                    cn.Close();
                }

                LimpiarGrid();
                lblMensaje.Text = "Mascota modificada con éxito.";
                lblMensaje.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {
                lblMensaje.Text = "Error al modificar la mascota. Detalle del error: " + ex.Message;
                lblMensaje.ForeColor = System.Drawing.Color.Red;
            }
        }
        protected void LimpiarGrid()
        {
            GridView1.DataSource = null;
            GridView1.DataBind();

        }
        private void ObtenerDetallesMascota(string idMascota)
        {
            using (SqlConnection cn = new SqlConnection(conexion4))
            {
                cn.Open();

                string query = "SELECT * FROM Mascotas WHERE ID_Mascota = @IdMascota";

                using (SqlCommand cmd = new SqlCommand(query, cn))
                {
                    cmd.Parameters.AddWithValue("@IdMascota", idMascota);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtNombreMascota.Text = reader["Nombre_Mascota"].ToString();
                            txtTipoMascota.Text = reader["Tipo_Mascota"].ToString();
                            txtComidaFavorita.Text = reader["Comida_Favorita"].ToString();
                        }
                    }
                }

                // Cerrar la conexión
                cn.Close();
            }
        }

    }
}