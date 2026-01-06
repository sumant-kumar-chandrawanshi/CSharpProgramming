<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="StdioButttonuse.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Select your gender: </p>
            <asp:RadioButton ID="RadioButton1"  runat="server"  Text="Male" GroupName="res" Checked="true"/>
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="res" />
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <br /><br />
            <asp:Label ID="genderID" runat="server" ></asp:Label>
            



        </div>
    </form>
</body>
</html>
