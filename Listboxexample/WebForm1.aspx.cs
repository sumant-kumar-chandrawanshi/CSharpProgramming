using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Listboxexample
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListBox1.Items.Add("Hazaribagh");
                ListBox1.Items.Add("Deoghar");
                ListBox1.Items.Add("Koderma");
                ListBox1.Items.Add("Chattar");
                ListBox1.Items.Add("Ranchi");
                ListBox1.Items.Add("Dumka");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Add(TextBox1.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Label1.Text="Total Count is "+ListBox1.Items.Count.ToString();
                
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var items=from ListItem li in ListBox1.Items
                      where li.Selected==true
                      select li;
            Label1.Text = "You Selected ....<br>";

            foreach(ListItem li  in items)
            {
                Label1.Text += li.Text + "<br>";
            }
           
        }

       
    }
}