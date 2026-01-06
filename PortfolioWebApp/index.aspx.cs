using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PortfolioWebApp
{
    public partial class index : System.Web.UI.Page
    {
        public string Name { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public List<Project> Projects { get; set; }  // ✅ Make it a public property

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Name = "Sumant Kumar";
                Title = "Full Stack Developer & Educator";
                Description = "I create bilingual educational content, build full-stack apps, and mentor students in tech.";

                Projects = new List<Project>
                {
                    new Project { Title = "Student Portal", Description = "Role-based dashboard with bilingual UI." },
                    new Project { Title = "Compiler Explorer", Description = "Visual grammar ambiguity analyzer." },
                    new Project { Title = "C Projects Library", Description = "Menu-driven systems for beginners." }
                };
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string name = ContactName.Text;
            string message = ContactMessage.Text;
            FeedbackLabel.Text = $"Thanks, {name}! Your message has been received.";
            // You can log or store the message here
        }

        public class Project
        {
            public string Title { get; set; }
            public string Description { get; set; }
        }
    }
}