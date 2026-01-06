using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InputTwoDisplayAdd
{
    public partial class AddNumbers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int num1, num2;

            // Try parsing input values
            bool isValid1 = int.TryParse(txtNum1.Text.Trim(), out num1);
            bool isValid2 = int.TryParse(txtNum2.Text.Trim(), out num2);

            if (isValid1 && isValid2)
            {
                int sum = num1 + num2;
                string script = $"alert('Sum: {sum}');";
                ClientScript.RegisterStartupScript(this.GetType(), "sumAlert", script, true);
            }
            else
            {
                string script = "alert('Please enter valid numbers.');";
                ClientScript.RegisterStartupScript(this.GetType(), "errorAlert", script, true);
            }
        }
        
    }
}