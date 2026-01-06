<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InputDisplay.aspx.cs" Inherits="InputDisplay.InputDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter first Number"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Second Number"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="Button" onClick=""/>
    </form>
</body>
</html>
