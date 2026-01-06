<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PortfolioWebApp.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body { font-family: Arial; margin: 2rem; background: #f0f0f0; }
        .section { background: white; padding: 1rem; margin-bottom: 2rem; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
        input, textarea { width: 100%; margin-top: 0.5rem; padding: 0.5rem; }
        button { margin-top: 1rem; padding: 0.5rem 1rem; }
    </style>
</head>
<body>
    <form id="mainForm" runat="server">
        <div class="section">
            <h1><%= Name %></h1>
            <p><%= Title %></p>
        </div>

        <div class="section">
            <h2>About Me</h2>
            <p><%= Description %></p>
        </div>

        <div class="section">
            <h2>Projects</h2>
            <ul>
                <% foreach (var project in Projects) { %>
                    <li><strong><%= project.Title %></strong>: <%= project.Description %></li>
                <% } %>
            </ul>
        </div>

        <div class="section">
            <h2>Contact Me</h2>
            <asp:TextBox ID="ContactName" runat="server" Placeholder="Your Name" /><br />
            <asp:TextBox ID="ContactMessage" runat="server" TextMode="MultiLine" Rows="4" Placeholder="Your Message" /><br />
            <asp:Button ID="SubmitButton" runat="server" Text="Send" OnClick="SubmitButton_Click" /><br />
            <asp:Label ID="FeedbackLabel" runat="server" ForeColor="Green" />
        </div>
    </form>
</body>

</html>
