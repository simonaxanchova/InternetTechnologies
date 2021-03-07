using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV2
{
    public partial class Task3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sampleImage_Click(object sender, ImageClickEventArgs e)
        {
            // Prikazhuvanje na koordinati na slika
            Label1.Text = "X: " + e.X + " Y: " + e.Y;
        }
    }
}
