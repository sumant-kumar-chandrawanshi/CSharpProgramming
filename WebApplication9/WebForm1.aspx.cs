using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                txtName.Focus();
            }
            rangeDate.MinimumValue= DateTime.Now.ToShortDateString();
            rangeDate.MaximumValue= DateTime.Now.AddDays(90).ToShortDateString();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(cldDate.Visible)
                cldDate.Visible= false;
            else
                cldDate.Visible= true;
        }

        protected void cldDate_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text= cldDate.SelectedDate.ToShortDateString();
            cldDate.Visible= false;
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            lblMsg.Text= "Thank you, " + txtName.Text + ". Your appointment is scheduled for " + txtDate.Text + ".";
        }
    }
}