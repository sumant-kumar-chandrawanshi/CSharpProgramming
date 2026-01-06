<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CalculatoreUdaySir.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 309px">
    <form id="form1" runat="server" padding="50px">
        <div>
            <table align="center">
                <caption>Calculator</caption>
                <tr>
                    <td>Enter 1 <sup>st</sup> number: </td>
                    <td><asp:TextBox ID="txtNum1"  runat="server" /></td>
                </tr>

                 <tr>
                    <td>Enter 2 <sup>nd</sup> number: </td>
                    <td><asp:TextBox ID="txtNum2"  runat="server" /></td>
                 </tr>
                <tr>
                    <td>Result : </td>
                    <td>
                        <asp:TextBox ID="txtResult" runat="server" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnAdd" runat="server" Text="ADD"  OnClick="Button_Click"/>
                        <asp:Button ID="btnSub" runat="server" Text="SUB" OnClick="Button_Click" />
                        <asp:Button ID="btnMulti" runat="server" Text="MULTI" OnClick="Button_Click" />
                        <asp:Button ID="btnDiv" runat="server" Text="Division" OnClick="Button_Click" />
                        <asp:Button ID="btnMode" runat="server" Text="MODE" OnClick="Button_Click" />
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
