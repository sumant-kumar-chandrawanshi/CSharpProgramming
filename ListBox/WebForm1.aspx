<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ListBox.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color: aqua;
        }
        table{
            border: 2px blue 2px ;
        }
        .auto-style1 {
            width: 466px;
        }
        .auto-style2 {
            width: 389px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <caption>List Box</caption>
            <tr>
                <td class="auto-style2">
                    <asp:ListBox ID="ListBox1" runat="server" Height="69px" Rows="2" Width="149px">
                        <asp:ListItem>Hazaribagh</asp:ListItem>
                        <asp:ListItem>Barhi</asp:ListItem>
                        <asp:ListItem>Koderma</asp:ListItem>
                        <asp:ListItem>Dhanbad</asp:ListItem>
                        <asp:ListItem>Chatra</asp:ListItem>
                        <asp:ListItem>Giridih</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" Width="320px"></asp:TextBox>
                </td>
                
            </tr>
           
           
        </table>
    </form>
</body>
</html>
