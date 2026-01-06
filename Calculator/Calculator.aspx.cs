using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool TryGetInputs(out int num1, out int num2)
        {
            bool isValid1 = int.TryParse(txtNum1.Text.Trim(), out num1);
            bool isValid2 = int.TryParse(txtNum2.Text.Trim(), out num2);
            return isValid1 && isValid2;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (TryGetInputs(out int num1, out int num2))
                lblResult.Text = $"Sum: {num1 + num2}";
            else
                lblResult.Text = "❌ Invalid input.";
        }

        protected void btnSubtract_Click(object sender, EventArgs e)
        {
            if (TryGetInputs(out int num1, out int num2))
                lblResult.Text = $"Difference: {num1 - num2}";
            else
                lblResult.Text = "❌ Invalid input.";
        }

        protected void btnMultiply_Click(object sender, EventArgs e)
        {
            if (TryGetInputs(out int num1, out int num2))
                lblResult.Text = $"Product: {num1 * num2}";
            else
                lblResult.Text = "❌ Invalid input.";
        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {
            if (TryGetInputs(out int num1, out int num2))
            {
                if (num2 != 0)
                    lblResult.Text = $"Quotient: {(double)num1 / num2}";
                else
                    lblResult.Text = "❌ Cannot divide by zero.";
            }
            else
                lblResult.Text = "❌ Invalid input.";
        }

        protected void btnModulus_Click(object sender, EventArgs e)
        {
            if (TryGetInputs(out int num1, out int num2))
            {
                if (num2 != 0)
                    lblResult.Text = $"Remainder: {num1 % num2}";
                else
                    lblResult.Text = "❌ Cannot perform modulus with zero.";
            }
            else
                lblResult.Text = "❌ Invalid input.";
        }
    }
}