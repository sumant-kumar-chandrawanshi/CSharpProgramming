using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheckBoxUse
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            List<string> selectedInterests = new List<string>();

            if (CheckBox1.Checked) selectedInterests.Add(CheckBox1.Text);
            if (CheckBox2.Checked) selectedInterests.Add(CheckBox2.Text);
            if (CheckBox3.Checked) selectedInterests.Add(CheckBox3.Text);
            if (CheckBox4.Checked) selectedInterests.Add(CheckBox4.Text);
            if (CheckBox5.Checked) selectedInterests.Add(CheckBox5.Text);

            if (selectedInterests.Count > 0)
            {
                lblResult.Text = "✅ Selected Interests: " + string.Join(", ", selectedInterests);
                lblResult.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblResult.Text = "❌ No interests selected.";
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}