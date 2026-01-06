<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shopping.aspx.cs" Inherits="ShoppingApp.Shopping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>🛍️ Shopping App</title>
    <style>
        body { font-family: Arial; margin: 0; padding: 0; background: #f4f4f4; }
        .header, .footer { background: #333; color: white; padding: 1rem; text-align: center; }
        .sidebar { background: #eee; padding: 1rem; width: 200px; float: left; height: 100vh; }
        .main { margin-left: 220px; padding: 1rem; }
        .card { background: white; padding: 1rem; margin: 1rem 0; border-radius: 8px; box-shadow: 0 2px 5px rgba(0,0,0,0.1); }
        .search-bar { margin-bottom: 1rem; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>🛍️ Sumant's Shopping App</h1>
            <asp:TextBox ID="SearchBox" runat="server" Placeholder="Search products..." />
            <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
        </div>

        <div class="sidebar">
            <h3>Navigation</h3>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Cart</a></li>
                <li><a href="#">Add Product</a></li>
                <li><a href="#">Manage Users</a></li>
            </ul>
        </div>

        <div class="main">
            <asp:Repeater ID="ProductRepeater" runat="server">
                <ItemTemplate>
                    <div class="card">
                        <img src='<%# Eval("ImageUrl") %>' alt="Product" width="100" /><br />
                        <strong><%# Eval("Name") %></strong><br />
                        <p><%# Eval("Description") %></p>
                        <p>₹<%# Eval("Price") %></p>
                        <asp:Button ID="BuyButton" runat="server" Text="Buy Now" CommandArgument='<%# Eval("ProductId") %>' OnClick="BuyButton_Click" />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <div class="footer">
            <p>&copy; 2025 Sumant Kumar</p>
        </div>
    </form>
</body>
</html>
