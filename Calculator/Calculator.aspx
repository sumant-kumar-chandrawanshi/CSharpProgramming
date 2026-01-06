<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Calculator.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f6f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .calculator-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 320px;
            text-align: center;
        }

        input[type="text"] {
            width: 90%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
        }

        .btn-group {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 10px;
            margin-top: 10px;
        }

        input[type="submit"] {
            flex: 1 1 45%;
            padding: 10px;
            background-color: #0078D4;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 15px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #005a9e;
        }

        .result-label {
            margin-top: 20px;
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtNum1" runat="server" placeholder="Enter first number" />
        <br /><br />
        <asp:TextBox ID="txtNum2" runat="server" placeholder="Enter second number" />
        <br /><br />
         <asp:Label ID="lblResult" runat="server" Font-Bold="true" ForeColor="DarkBlue" />
         <br /><br />

        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        <asp:Button ID="btnSubtract" runat="server" Text="Subtract" OnClick="btnSubtract_Click" />
        <asp:Button ID="btnMultiply" runat="server" Text="Multiply" OnClick="btnMultiply_Click" />
        <asp:Button ID="btnDivide" runat="server" Text="Divide" OnClick="btnDivide_Click" />
        <asp:Button ID="btnModulus" runat="server" Text="Modulus" OnClick="btnModulus_Click" />
        <br /><br />

       
    </form>
</body>
</html>
