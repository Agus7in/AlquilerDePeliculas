using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoParcial2
{
    public partial class AltaDePeliculas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int valor;
            valor = int.Parse(this.TextBox4.Text);
            if(valor >= 1000 && valor <= 9999)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (File.Exists(this.Server.MapPath(".") + "/movies/" +this.FileUpload1.FileName))
            {
                this.Label3.Text = "Existe un archivo con dicho nombre en el servidor";
                return;
            }
            this.FileUpload1.SaveAs(Server.MapPath(".") + "/movies/" +this.FileUpload1.FileName);
            this.Label3.Text = "Archivo subido";
            
            this.SqlDataSourceInsertarPeliculas.InsertParameters["id"].DefaultValue = this.DropDownList1.SelectedValue;
            this.SqlDataSourceInsertarPeliculas.InsertParameters["nombre"].DefaultValue = this.TextBox1.Text;
            this.SqlDataSourceInsertarPeliculas.InsertParameters["web"].DefaultValue = this.TextBox2.Text;
            this.SqlDataSourceInsertarPeliculas.InsertParameters["descripcion"].DefaultValue = this.TextBox3.Text;
            this.SqlDataSourceInsertarPeliculas.InsertParameters["anio"].DefaultValue = this.TextBox4.Text;
            this.SqlDataSourceInsertarPeliculas.InsertParameters["archivo"].DefaultValue = this.FileUpload1.FileName;
            this.SqlDataSourceInsertarPeliculas.Insert();
            
            this.Label3.Text = "Se cargaron los datos";
            this.TextBox1.Text = "";
            this.TextBox2.Text = "";
            this.TextBox3.Text = "";
            this.TextBox4.Text = "";
        }
    }
}