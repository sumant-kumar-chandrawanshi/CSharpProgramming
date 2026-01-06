using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SumAndProduct
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            int num1, num2;

            bool isValid1 = int.TryParse(txtNum1.Text.Trim(), out num1);
            bool isValid2 = int.TryParse(txtNum2.Text.Trim(), out num2);

            if (isValid1 && isValid2)
            {
                int sum = num1 + num2;
                int product = num1 * num2;

                lblResult.Text = $"Sum: {sum}<br />Product: {product}";
            }
            else
            {
                lblResult.Text = "❌ Please enter valid numbers.";
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}