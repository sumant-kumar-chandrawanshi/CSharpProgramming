<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>
<html>
<head>
    <title>Signup</title>
    <link rel="stylesheet" href="Styles/signup.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="signup-container">
            <h2>Sign Up</h2>
            <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" />
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" TextMode="Email" />
            <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password" />
            <asp:Button ID="btnSignup" runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="message" />
        </div>
    </form>
</body>
</html>
