<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calender1.aspx.cs" Inherits="WebApplication8.calender1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3> Your BirthDay : </h3>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br />
            <p>Today's Date : </p>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <p>Your BirthDay Date : </p>
            <br />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
