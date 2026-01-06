<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebAppHtmlAndCSharp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav>
                <ul>
                    <li><a href="Home.aspx">Home</a></li>
                    <li><a href="About.aspx">About</a></li>
                    <li><a href="Services.aspx">Services</a></li>
                    <li><a href="Contact.aspx">Contact</a></li>
                </ul>
            </nav>

            <asp:Label ID="Label1" runat="server" Text="Welcome to our website!"></asp:Label>

            // Search bar

            <div>
                <asp:TextBox ID="SearchBox" runat="server" Placeholder="Search..."></asp:TextBox>
                <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
             </div>

            // img slider bar

            <div>
                <asp:Image ID="ImageSlider" runat="server" Width="600px" Height="400px" />
                <asp:Button ID="PrevButton" runat="server" Text="Previous" OnClick="PrevButton_Click" />
                <asp:Button ID="NextButton" runat="server" Text="Next" OnClick="NextButton_Click" />

            </div>

            //main content area
            <div>
                <asp:Label ID="MainContent" runat="server" Text="This is the main content area.">

                    //left side bar
                    


                </asp:Label>

         </div>
    </form>
</body>

</html>
