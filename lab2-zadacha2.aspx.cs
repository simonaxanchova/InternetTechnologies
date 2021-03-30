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

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            int workingExperience;
            if (int.TryParse(txtGodini.Text, out workingExperience) && workingExperience >= 5)
            {
                lblKorisnik.Text = txtID.Text;
                lblKorisnik.Text = lblMail.Text;
                lblUspesnoKreiranje.Visible = true;
            }
            else
            {
                lblUspesnoKreiranje.Visible = false;
                lblGreska.Text = "Немате доволно искуство";
            }
            btnNext_Click(sender, e);
        }

        protected void btnPocetok_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}
