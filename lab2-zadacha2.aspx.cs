using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class zadacha2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex += 1;
        }

        protected void btnPrev_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex -= 1;
        }


        protected void btnStart_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            

        }
    }
}
