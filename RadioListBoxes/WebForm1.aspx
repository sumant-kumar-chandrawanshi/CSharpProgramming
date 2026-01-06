<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RadioListBoxes.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        div{
           adding:40px; 
        }
        body{
            
        }
        #hop{
          padding:40px;
        }
        .rbutoon{
            color:red;
            padding:25px;
        }
    </style>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 id="hop">ListBoxRadioButton</h1>
        </div>
        <hr />
        <div class="rbutoon">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="1">C</asp:ListItem>
            <asp:ListItem Value="2">C++</asp:ListItem>
            <asp:ListItem Value="3">Java</asp:ListItem>
            <asp:ListItem Value="4">C#</asp:ListItem>
            <asp:ListItem Value="6">Python</asp:ListItem>
            <asp:ListItem Value="6">JavaScript</asp:ListItem>
            <asp:ListItem Value="7">PHP</asp:ListItem>
        </asp:RadioButtonList>
            </div>
        <hr />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Results"></asp:Label>
    </form>
</body>
</html>
