<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequiedRanageValidation.aspx.cs" Inherits="RanageVailidation.RequiedRanageValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 480px">
            Jourany Planner</div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server" Height="400px" Text="Label" Width="150px"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Calendar ID="Calendar1" runat="server" Height="245px" Width="363px"></asp:Calendar>
        </p>
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="63px" Width="101px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
