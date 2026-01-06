using System;
using System.Web.UI;
using System.Security.Cryptography;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

public partial class Signup : Page
{
    protected void btnSignup_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text.Trim();
        string email = txtEmail.Text.Trim();
        string password = txtPassword.Text;

        if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
        {
            lblMessage.Text = "Please fill in all fields.";
            lblMessage.ForeColor = System.Drawing.Color.Red;
            return;
        }

        string hashedPassword = HashPassword(password);

        string connStr = ConfigurationManager.ConnectionStrings["SignupDB"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string query = "INSERT INTO Users (Username, Email, PasswordHash) VALUES (@Username, @Email, @PasswordHash)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Username", username);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@PasswordHash", hashedPassword);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                lblMessage.Text = "Signup successful!";
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            catch (SqlException ex)
            {
                if (ex.Number == 2627) // Unique constraint violation
                {
                    lblMessage.Text = "Email already exists.";
                }
                else
                {
                    lblMessage.Text = "Database error: " + ex.Message;
                }
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }

    private string HashPassword(string password)
    {
        using (SHA256 sha256 = SHA256.Create())
        {
            byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
            StringBuilder builder = new StringBuilder();
            foreach (byte b in bytes)
            {
                builder.Append(b.ToString("x2"));
            }
            return builder.ToString();
        }
    }
}
