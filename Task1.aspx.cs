using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PrikazhiGrad_Click(object sender, EventArgs e)
        {
            ListItem selectedItem = ListaGradovi.SelectedItem;
            SelektiranGrad.Text = selectedItem.Text;

        }

        protected void PrikazhiGrad_Click1(object sender, EventArgs e)
        {
            ListItemCollection items = ListaGradovi.Items;
            SelektiranGrad.Text = "";
            Oddalechenost.Text = "";

            foreach(ListItem item in items)
            {
                if(item.Selected)
                {
                    SelektiranGrad.Text += "<br/>" + item.Text;
                    Oddalechenost.Text += "<br/>" + item.Value.ToString();
                }
            }
        }
    }
}
