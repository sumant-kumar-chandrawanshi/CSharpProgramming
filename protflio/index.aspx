<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="protflio.index" %>


<!DOCTYPE html>
<html>
<head>
    <title>My Portfolio</title>
    <style>
        body { font-family: Arial; margin: 2rem; background: #f0f0f0; }
        .section { background: white; padding: 1rem; margin-bottom: 2rem; border-radius: 8px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="section">
            <h1>Sumant Kumar</h1>
            <p>Full Stack Developer & Educator</p>
        </div>

        <div class="section">
            <h2>Projects</h2>
            <asp:Repeater ID="ProjectsRepeater" runat="server">
                <ItemTemplate>
                    <p><strong><%# Eval("Title") %></strong>: <%# Eval("Description") %></p>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
