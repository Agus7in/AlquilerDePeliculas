using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoParcial2
{
    
    public partial class AdministracionDeGeneros : System.Web.UI.Page
    {
        public static int id;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.InsertParameters["nombre_genero"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSource1.Insert();
            this.Label2.Text = "Se insertó un nuevo género.";
            this.TextBox1.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.TextBox1.Text = this.GridView1.Rows[this.GridView1.SelectedIndex].Cells[2].Text;
            id = int.Parse(this.GridView1.Rows[this.GridView1.SelectedIndex].Cells[1].Text);

            this.Label2.Text = "";
            this.Label3.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceUpdate.UpdateParameters["nombre"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSourceUpdate.UpdateParameters["id"].DefaultValue = "" + id;
            int cant;
            cant = this.SqlDataSourceUpdate.Update();
            if (cant == 1)
            {
                this.Label3.Text = "Se modifico el genero";
                GridView1.DataBind();                                              //Actualizacion del GridView
            }
            else
            {
                this.Label3.Text = "No existe un genero con ese codigo ";
            }
        }
    }
}