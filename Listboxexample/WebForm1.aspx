<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Listboxexample.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 615px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
        </div>


         
    <table class="auto-style1" style=" width: 200px; text-align: center" border: 1px cellpadding: 5px>
        <caption>List Box </caption>
        <tr>
            <td class="auto-style2">
                <asp:ListBox ID="ListBox1" runat="server" Width="198px"></asp:ListBox>
                <br />
                <br />
                <hr />
               
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                              

            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter City Name"></asp:TextBox>
                <br />
                <hr />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Count" OnClick="Button2_Click" />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Selected Text" />
                <br />
                <hr />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                
               

                &nbsp;<td>
                &nbsp;</td>
        </tr>
    </table>


    </form>



    </body>

</html>
