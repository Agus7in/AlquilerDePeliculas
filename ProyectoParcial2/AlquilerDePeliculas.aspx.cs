using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoParcial2
{
    public partial class AlquilerDePeliculas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }
        HttpCookie cookie1;
        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceCargarAlquiler.SelectParameters["id"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSourceCargarAlquiler.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros;
            registros = (SqlDataReader)SqlDataSourceCargarAlquiler.Select(DataSourceSelectArguments.Empty);
            if (registros.Read())
            {
                this.Label2.Text = "Detalles de la Pelicula: <br> <br><hr>Nombre: " + registros["Nombre"] + "<br><hr>" + "Genero: " + registros["Genero"] + "<br><hr>" + "Web: " + registros["Web"] + "<br><hr>" + "Año: " + registros["Anio"] + "<br><hr>" + "Descripcion: " + registros["Descripcion"] + "<br><hr><br>Se marcó la película como alquilada.";

                this.SqlDataSourceCargarAlquiler.InsertParameters["id"].DefaultValue=this.TextBox1.Text;
                this.SqlDataSourceCargarAlquiler.InsertParameters["fechaHora"].DefaultValue =DateTime.Now.ToString();
                this.SqlDataSourceCargarAlquiler.Insert();
                
                cookie1 = new HttpCookie("movie", registros["Nombre"].ToString());
                this.Response.Cookies.Add(cookie1);
                this.Label4.Text = "Se creó la cookie";
            }
            else
            {
                this.Label2.Text = "No existe una pelicula con ese código";
            }
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}