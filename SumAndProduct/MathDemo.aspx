<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MathDemo.aspx.cs" Inherits="SumAndProduct.WebForm1" %>

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
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
        <br /><br />
        <asp:Label ID="lblResult" runat="server" Font-Bold="true" ForeColor="DarkGreen" />
    </form>
</body>
</html>
