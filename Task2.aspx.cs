using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV2
{
    public partial class Task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                List<ListItem> list_items = new List<ListItem>();
                ListItem item1 = new ListItem("Euro", "61");
                ListItem item2 = new ListItem("Dollar", "55");

                list_items.Add(item1);
                list_items.Add(item2);

                ListaValuti.DataSource = list_items;
                ListaValuti.DataBind();
            }
        }

        protected void DodadiValuta_Click(object sender, EventArgs e)
        {
            // Dinamichko kreiranje na stavka
            ListItem item = new ListItem(ImeValuta.Text, VrednostValuta.Text);
            ListaValuti.Items.Add(item);

            // Resetiranje na textbox polinjata po vnesuvanje na item vo ListaValuti
            ImeValuta.Text = "";
            VrednostValuta.Text = "";

            // Prikazhuvanje na vkupen broj na vaulti dodadeni vo ListaValuti
            //total.Text = ListaValuti.Items.Count.ToString();
            updateTotal();
        }

        protected void BrishiValuta_Click(object sender, EventArgs e)
        {
            // Proveruvame dali e izbrana stavka od ListaValuti
            if(ListaValuti.SelectedIndex != -1)
            {
                ListaValuti.Items.Remove(ListaValuti.SelectedItem);
                //total.Text = ListaValuti.Items.Count.ToString();
                updateTotal();
            }
            else
            {
                status.Text = "Нема селектирано ниедна валута!";
            }
        }

        // Update na total vrednosta na stavki vo ListaValuti
        private void updateTotal()
        {
            total.Text = ListaValuti.Items.Count.ToString();
        }

        protected void ListaValuti_SelectedIndexChanged(object sender, EventArgs e) // del od zadacha 6
        {
            int value = Convert.ToInt32(ListaValuti.SelectedValue);
            status.Text = Convert.ToString(Convert.ToInt32(Vrednost.Text) * value);
        }
    }
}
