using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoParcial2
{
    public partial class ImagenDinamica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack == false)
            {
                if (this.Request.Cookies["movie"] != null)
                {
                    Bitmap mapabit = new Bitmap(400, 100);
                    
                    Graphics lienzo;
                    lienzo = Graphics.FromImage(mapabit);
                    Font fuente1 = new Font("Times", 40);
                    SolidBrush pincel1 = new SolidBrush(Color.Red);
                    lienzo.DrawString(this.Request.Cookies["movie"].Value, fuente1, pincel1, 15, 15);
                    mapabit.Save(Response.OutputStream, ImageFormat.Gif);
                }
            }
            
        }
    }
}