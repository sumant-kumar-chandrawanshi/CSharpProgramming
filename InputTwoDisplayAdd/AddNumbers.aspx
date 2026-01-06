<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNumbers.aspx.cs" Inherits="InputTwoDisplayAdd.AddNumbers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtNum1" runat="server" placeholder="Enter first number" />
        <br /><br />
        <asp:TextBox ID="txtNum2" runat="server" placeholder="Enter second number" />
        <br /><br />
        <asp:Button ID="btnAdd" runat="server" Text="Add Numbers" OnClick="btnAdd_Click" />
    </form>
</body>
</html>
