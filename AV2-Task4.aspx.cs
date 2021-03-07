using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV2
{
    public partial class Task4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            boja.Items.Add(new ListItem("Red"));
            boja.Items.Add(new ListItem("Blue"));
            boja.Items.Add(new ListItem("Yellow"));
            boja.Items.Add(new ListItem("Green"));

            Font.Items.Add(new ListItem("Arial"));
            Font.Items.Add(new ListItem("Times New Roman"));
            Font.Items.Add(new ListItem("Consolas"));
            Font.Items.Add(new ListItem("SF Pro"));

            fontColor.Items.Add(new ListItem("Red"));
            fontColor.Items.Add(new ListItem("Blue"));
            fontColor.Items.Add(new ListItem("Yellow"));
            fontColor.Items.Add(new ListItem("Green"));

            borderType.Items.Add(new ListItem(BorderStyle.None.ToString(), ((int)BorderStyle.None).ToString()));
            borderType.Items.Add(new ListItem(BorderStyle.Solid.ToString(), ((int)BorderStyle.Solid).ToString()));

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Poraka.Text = ShortText.Text;
            Poraka.Font.Name = Font.SelectedItem.Text;

            int size;

            var success = Int32.TryParse(fontSize.Text, out size);

            if (success)
            {
                Poraka.Font.Size = size;
            }

            if(showImg.Checked)
            {
                Image1.Visible = true;
            }

            if(showImg.Checked)
            {
                Image1.Visible = true;
            }

            Cestitka.BackColor = Color.FromName(boja.SelectedItem.Text);

        }
    }
}
