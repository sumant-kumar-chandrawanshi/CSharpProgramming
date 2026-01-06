<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AlertDemo.aspx.cs" Inherits="InputDataDisplayData.AlertDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <asp:TextBox ID="txtInput" runat="server" placeholder="Enter something..." />
        <asp:Button ID="btnShowAlert" runat="server" Text="Show Alert" OnClick="btnShowAlert_Click" />
    </form>
</body>
</html>
