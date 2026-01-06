<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CheckBoxUse.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <asp:Label ID="Label1" runat="server" Text="Choose Course :"></asp:Label>
            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="BCA" />
            <br />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="MCA" />
            <br />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="B.Tech" />
            <br />
            <asp:CheckBox ID="CheckBox4" runat="server" Text="M.Tech" />
            <br />
            <asp:CheckBox ID="CheckBox5" runat="server" Text="P.CL" />
            <br /><br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <br /><br />

            <asp:Label ID="lblResult" runat="server" ForeColor="Green" />
            </div>
    </form>
</body>
</html>
