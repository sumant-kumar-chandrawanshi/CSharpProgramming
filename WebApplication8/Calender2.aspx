<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calender2.aspx.cs" Inherits="WebApplication8.Calender2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    Enter Date:<asp:TextBox ID="txtdate" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="imgDate" ImageAlign="AbsMiddle" ImageUrl="~/img/calender.png" runat="server" Width="20" Height="20" OnClick="imgDate_Click" />
                    <asp:Calendar ID="cldDate" runat="server" OnSelectionChanged="cldDate_SelectionChanged"></asp:Calendar>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
