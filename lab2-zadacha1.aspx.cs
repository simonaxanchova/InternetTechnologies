using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class zadacha1 : System.Web.UI.Page
    {
        private static readonly string[] Months = new[]
        {
            "Јануари",
            "Февруари",
            "Март",
            "Април",
            "Мај",
            "Јуни",
            "Јули",
            "Август",
            "Септември",
            "Октомври",
            "Ноември",
            "Декември",
        };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                ddlMesec.DataSource = Months;
                ddlMesec.DataBind();

                for (int i = 1; i <= 31; i++)
                {
                    ddlDen.Items.Add(new ListItem(Convert.ToString(i), Convert.ToString(i)));
                }

                int currentYear = DateTime.Now.Year;
                for (int i = currentYear; i <= currentYear + 4; ++i)
                {
                    ddlGodina.Items.Add(new ListItem(Convert.ToString(i), Convert.ToString(i)));
                }

                for (int i = 0; i < 24; i++)
                {
                    DateTime d = new DateTime(2018, 03, 12, i, 0, 0);
                    ddlVreme.Items.Add(new ListItem(d.ToShortTimeString()));
                }
            }
        }

        protected void txbIme_TextChanged(object sender, EventArgs e)
        {
            lblPatnik.Text = "";
            lblPatnik.Text = txbIme.Text + " " + txbPrezime.Text;
        }

        protected void txbPrezime_TextChanged(object sender, EventArgs e)
        {
            txbIme_TextChanged(sender, e);
        }


        protected void ddlDo_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblDo.Text = ddlDo.SelectedItem.Text;
        }


        protected void lstSredstvo_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblSredstvo.Text = lstSredstvo.SelectedItem.Text;
            imgSlika.ImageUrl = lstSredstvo.SelectedItem.Value;
        }

        protected void ddlVreme_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblVreme.Text = ddlVreme.SelectedItem.Text;
        }

        protected void rblZona_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblZona.Text = rblZona.SelectedItem.Text;
        }

        protected void rblKlasa_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblKlasa.Text = rblKlasa.SelectedItem.Text;
        }



        protected void cblPosluga_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblPosluga.Text = cblPosluga.SelectedItem.Text;
        }

        protected void ddlOd_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblOd.Text = ddlOd.SelectedItem.Text;
        }
    }
}
