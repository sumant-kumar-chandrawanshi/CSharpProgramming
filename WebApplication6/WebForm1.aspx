<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>RadioButtonList Example: </h2>
            <hr />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="1">JAVA</asp:ListItem>
                <asp:ListItem Value="2">DSA</asp:ListItem>
                <asp:ListItem Value="3">PYTHON</asp:ListItem>
                <asp:ListItem Value="4">C++</asp:ListItem>
                <asp:ListItem Value="5">C#</asp:ListItem>
                <asp:ListItem Value="6">ASP.NET</asp:ListItem>
                <asp:ListItem Value="7">PHP</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Click" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
