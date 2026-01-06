using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ToDoWebApp
{
    public partial class Default : System.Web.UI.Page
    {
        string connStr = ConfigurationManager.ConnectionStrings["ToDoDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadTasks();
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO Tasks (Title) VALUES (@Title)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Title", TaskTitle.Text);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            TaskTitle.Text = "";
            LoadTasks();
        }

        protected void DoneButton_Click(object sender, EventArgs e)
        {
            var btn = (System.Web.UI.WebControls.Button)sender;
            int id = Convert.ToInt32(btn.CommandArgument);

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "UPDATE Tasks SET IsDone = 1 WHERE Id = @Id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Id", id);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            LoadTasks();
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            var btn = (System.Web.UI.WebControls.Button)sender;
            int id = Convert.ToInt32(btn.CommandArgument);

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "DELETE FROM Tasks WHERE Id = @Id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Id", id);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            LoadTasks();
        }

        private void LoadTasks()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Tasks", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                TasksRepeater.DataSource = dt;
                TasksRepeater.DataBind();
            }
        }
    }
}
