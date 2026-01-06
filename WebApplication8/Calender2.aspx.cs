using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class Calender2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                txtdate.Focus();
        }

        protected void imgDate_Click(object sender, ImageClickEventArgs e)
        {
            if(cldDate.Visible)
            {
                cldDate.Visible = false;
            }
            else
            { 
                cldDate.Visible = true;
            }
        }

        protected void cldDate_SelectionChanged(object sender, EventArgs e)
        {
            txtdate.Text = cldDate.SelectedDate.ToString("D");
            cldDate.Visible = false;
        }
    }
}