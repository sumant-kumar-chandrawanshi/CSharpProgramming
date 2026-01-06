<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <style>
        body{
            font-family: Arial;
            background: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .calc-container{
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 300px;
        }
        .calc-container .button input{
            width: 48%;
            margin: 5px 1%;
            backgound: #007bff;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
        }
        .calc-container .buttons input:hover{
            backgound: #0056b3:

        }
        .result{
            text-align: center;
            margin-top: 10px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="calc-container">
            <h2>Calculator</h2>
            <asp:TextBox ID="txtFirst" runat="server" placeholder="First Number" OnTextChanged="txtFirst_TextChanged" />
            <asp:TextBox ID="txtSecond" runat="server" placeholder="Second Number" />
            <div class="buttons">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                <asp:Button ID="btnSub" runat="server" Text="Subtract" OnClick="btnSub_Click" />
                <asp:Button ID="btnMul" runat="server" Text="Multiple" OnClick="btnMul_Click" />
                <asp:Button ID="btnDiv" runat="server" Text="Modulus" OnClick="btnMod_Click" />

            </div>
            <asp:TextBox ID="lblResult" runat="server" CssClass="result" OnTextChanged="lblResult_TextChanged" />
        </div>
    </form>
</body>
</html>
