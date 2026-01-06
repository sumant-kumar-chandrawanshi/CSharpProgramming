using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculatoreUdaySir
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtNum1.Focus();

            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Button b=(Button)sender;
            int Num1=int.Parse(txtNum1.Text);
            int Num2=int.Parse(txtNum2.Text);
            int Result =0;

            switch (b.ID)
            {
                case "btnAdd":
                    
                    Result = Num1 + Num2;
                    break;
                case "btnSub":
                    Result = 1;
                    Result = Num1 - Num2;
                    break;

                case "btnMulti":
                    
                    Result = Num1 * Num2;
                    break;
                case "btnDiv":
                    
                    Result = Num1 / Num2;
                    break;
                case "btnMode":
                    Result = Num1% Num2;
                    break;


            }
            txtResult.Text = Result.ToString();
        }
        
    }
}