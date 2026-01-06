<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 74%;
        }
        .auto-style2 {
            width: 124px;
        }
        .auto-style4 {
            width: 263px;
        }
        .auto-style5 {
            width: 352px;
        }
        .auto-style6 {
            width: 124px;
            height: 33px;
        }
        .auto-style7 {
            width: 263px;
            height: 33px;
        }
        .auto-style8 {
            width: 436px;
        }
        
        .auto-style9 {
            width: 96px;
        }
        
    </style>
</head>
    <Styles>
        
    </Styles>
<body style="height: 201px">
    <form id="form1" runat="server">
        <table class="auto-style1" align="center">
            <caption>Login Form</caption>
            <tr>
                  <td class="auto-style8" >
   
                </td>
                
                <td class="auto-style2">
                    User Name:  
                </td>
                <td class="auto-style4">
                     <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                                
            </tr>
            <tr>

                  <td class="auto-style8" >
   
                </td>
                
                <td class="auto-style6">
                    Password: 
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" MaxLength="16"></asp:TextBox>
                </td>
                
            </tr>
            <tr>

                  <td class="auto-style8" >
   
                    </td>
                
                <td class="auto-style2">
                   Email: 
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="email" ></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style8" >
   
                </td>
                
                <td class="auto-style2" >
                    
                </td>

                <td class="auto-style5">
                    
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style9">
                   
                    <asp:Button ID="btnReset" runat="server" Text="Reset"  />
                   
                            </td>
                            <td>
                    
                    <asp:Button ID="btnSubmit" runat="server" Text="Login" />
                   
                            </td>
                        </tr>
                    </table>
                </td>
                
                  <td class="auto-style4" >
   
                      &nbsp;</td>
            </tr>
            
        </table>
    </form>
</body>
</html>
