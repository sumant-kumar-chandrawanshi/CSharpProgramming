using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InputDataDisplayData
{
    public partial class AlertDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShowAlert_Click(object sender, EventArgs e)
        {
            string userInput = txtInput.Text.Trim();
            string safeInput = userInput.Replace("'", "\\'"); // Escape single quotes
            string script = $"alert('You entered: {safeInput}');";

            ClientScript.RegisterStartupScript(this.GetType(), "alertBox", script, true);
        }
    }
}