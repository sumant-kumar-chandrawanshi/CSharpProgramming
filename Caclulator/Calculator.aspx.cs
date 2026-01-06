using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//namespace Caclulator
//{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }



    protected void btnAdd_Click(object sender, EventArgs e)
    {
        lblResult.Text = Calculate((a, b) => a + b);
    }

    protected void btnSub_Click(object sender, EventArgs e)
    {
        lblResult.Text = Calculate((a, b) => a - b);
    }

    protected void btnMul_Click(object sender, EventArgs e)
    {
        lblResult.Text = Calculate((a, b) => a * b);
    }

    protected void btnDiv_Click(object sender, EventArgs e)
    {
        if (txtSecond.Text == "0")
        {
            lblResult.Text = "Cannot divide by zero.";
        }
        else
        {
            lblResult.Text = Calculate((a, b) => a / b);
        }
    }

    protected void btnMod_Click(object sender, EventArgs e)
    {
        lblResult.Text = Calculate((a, b) => a % b);
    }

    private string Calculate(Func<double, double, double> operation)
    {
        double num1, num2;
        if (double.TryParse(txtFirst.Text, out num1) && double.TryParse(txtSecond.Text, out num2))
        {
            return "Result: " + operation(num1, num2).ToString();
        }
        else
        {
            return "Invalid input.";
        }
    }


}
//}