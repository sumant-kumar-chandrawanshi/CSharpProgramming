using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ShoppingApp
{
    public partial class Shopping : System.Web.UI.Page
    {
        string connStr = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=ShoppingDB;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadProducts();
        }

        protected void LoadProducts(string keyword = "")
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT * FROM Products WHERE Name LIKE @Keyword OR Description LIKE @Keyword";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Keyword", "%" + keyword + "%");
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                ProductRepeater.DataSource = dt;
                ProductRepeater.DataBind();
            }
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            LoadProducts(SearchBox.Text.Trim());
        }

        protected void BuyButton_Click(object sender, EventArgs e)
        {
            var btn = (System.Web.UI.WebControls.Button)sender;
            int productId = Convert.ToInt32(btn.CommandArgument);
            // You can add cart logic or redirect to checkout here
            Response.Write($"<script>alert('Product {productId} added to cart!');</script>");
        }
    }
}
