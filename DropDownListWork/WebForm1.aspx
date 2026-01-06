<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DropDownListWork.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Select Your Course"></asp:Label>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Value="1">BCA</asp:ListItem>
            <asp:ListItem Value="2">BscIT</asp:ListItem>
            <asp:ListItem Value="3">MCA</asp:ListItem>
            <asp:ListItem Value="4">B.tech</asp:ListItem>
        </asp:DropDownList>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Select Your City Name"></asp:Label>
        </p>
        <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Value="1">Hazaribagh</asp:ListItem>
            <asp:ListItem Value="2">Koderma</asp:ListItem>
            <asp:ListItem Value="3">Barhi</asp:ListItem>
            <asp:ListItem Value="4">Chattra</asp:ListItem>
            <asp:ListItem Value="5">Ranchi</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Results"></asp:Label>
        <p>
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        </p>
    </form>
</body>
</html>
