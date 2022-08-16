using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoParcial2
{
    public partial class BMCDePeliculas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id="";
            string descripcionGenero = this.GridView1.Rows[this.GridView1.SelectedIndex].Cells[3].Text;
            this.SqlDataSourceSeleccionarDelGridViewParaElDropDown.SelectParameters["nombre"].DefaultValue = descripcionGenero;

            this.SqlDataSourceSeleccionarDelGridViewParaElDropDown.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registro;
            registro = (SqlDataReader)SqlDataSourceSeleccionarDelGridViewParaElDropDown.Select(DataSourceSelectArguments.Empty);

            if (registro.Read())
            {
                id = registro["id"].ToString();
            }

            this.TextBox1.Text = this.GridView1.Rows[this.GridView1.SelectedIndex].Cells[1].Text;
            this.TextBox2.Text = this.GridView1.Rows[this.GridView1.SelectedIndex].Cells[2].Text;
            DropDownList1.SelectedValue = id;
            this.TextBox4.Text = this.GridView1.Rows[this.GridView1.SelectedIndex].Cells[4].Text;
            this.TextBox5.Text = this.GridView1.Rows[this.GridView1.SelectedIndex].Cells[5].Text;
            this.TextBox6.Text = this.GridView1.Rows[this.GridView1.SelectedIndex].Cells[6].Text;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label7.Text = "";
            if (TextBox1.Text == "")
            {
                Label7.Text = "Debe ingresar un Id de pelicula.";
                return;
            }
            this.SqlDataSourceBuscarPorId.SelectParameters["id"].DefaultValue = TextBox1.Text;
            this.SqlDataSourceBuscarPorId.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registro;
            registro = (SqlDataReader)SqlDataSourceBuscarPorId.Select(DataSourceSelectArguments.Empty);
            if (registro.Read())
            {
                TextBox2.Text = registro["Nombre"].ToString();
                TextBox4.Text = registro["Web"].ToString();
                TextBox5.Text = registro["Descripcion"].ToString();
                TextBox6.Text = registro["Anio"].ToString();
                DropDownList1.SelectedValue = registro["id_genero"].ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceModificarPelicula.UpdateParameters["id_genero"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSourceModificarPelicula.UpdateParameters["nombre"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSourceModificarPelicula.UpdateParameters["web"].DefaultValue = this.TextBox4.Text;
            this.SqlDataSourceModificarPelicula.UpdateParameters["anio"].DefaultValue = this.TextBox6.Text;
            this.SqlDataSourceModificarPelicula.UpdateParameters["descripcion"].DefaultValue = this.TextBox5.Text;
            this.SqlDataSourceModificarPelicula.UpdateParameters["id_pelicula"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = SqlDataSourceModificarPelicula.Update();
            if (cant == 1)
            {
                Label8.Text = "Se modificó la película";
                GridView1.DataBind();                                              //Actualizacion del GridView
            }
            else
            {
                Label8.Text = "No existe una película con ese código";
            }
        }
    }
}