using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kolokviumskiVezhbi
{
    public partial class lab2zadacha2 : System.Web.UI.Page
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

        protected void Submit_Click(object sender, EventArgs e)
        {
            int workingExperience;
            if (int.TryParse(years.Text, out workingExperience) && workingExperience >= 5)
            {
                user.Text = finkiID.Text;
                userMail.Text = lblMail.Text;
                successRegistration.Visible = true;
            }
            else
            {
                successRegistration.Visible = false;
                error.Text = "Немате доволно работно искуство!";
            }
            btnNext_Click(sender, e);
        }

        protected void btnStart_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}
