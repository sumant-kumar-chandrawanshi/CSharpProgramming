using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class calender1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = "Today's date: " + Calendar1.TodaysDate.ToShortDateString();
            Label2.Text = "You selected date: " + Calendar1.SelectedDate.ToShortDateString();
        }
    }
}