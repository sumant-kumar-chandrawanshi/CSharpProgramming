<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication9.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3" align="center"><strong>Journey Planner</strong></td>
                </tr>
                <tr>
                    <td>Enter Name :</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Name field can't be empty" ForeColor="#669900" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Enter Age :</td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Age field can't be empty" ForeColor="#669900" ControlToValidate="txtAge"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic" ErrorMessage="Enter age between 18 to 65" ForeColor="#669900" ControlToValidate="txtAge" MaximumValue="65" MinimumValue="18" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>Date of Journey :</td>
                    <td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/calender.png" Width="20px" OnClick="ImageButton1_Click" />
                                <br />
                                <asp:Calendar ID="cldDate" runat="server" OnSelectionChanged="cldDate_SelectionChanged"></asp:Calendar>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Journey date can't be left empty" ForeColor="#669900" ControlToValidate="txtDate"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="rangeDate" runat="server" Display="Dynamic" ErrorMessage="Travel date should be with in 90 days from current date" ForeColor="#669900" ControlToValidate="txtDate" Type="Date"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnConfirm" runat="server" ForeColor="Blue" Text="Confirm Booking" OnClick="btnConfirm_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
