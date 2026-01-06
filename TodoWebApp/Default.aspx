<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ToDoWebApp.Default" %>

<!DOCTYPE html>
<html>
<head>
    <title>To-Do List</title>
    <style>
        body { font-family: Arial; margin: 2rem; }
        .task { margin-bottom: 1rem; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>My To-Do List</h1>

        <asp:TextBox ID="TaskTitle" runat="server" Placeholder="Enter new task" />
        <asp:Button ID="AddButton" runat="server" Text="Add Task" OnClick="AddButton_Click" /><br /><br />

        <asp:Repeater ID="TasksRepeater" runat="server">
            <ItemTemplate>
                <div class="task">
                    <%# Eval("Title") %> - 
                    <%# Convert.ToBoolean(Eval("IsDone")) ? "✅ Done" : "❌ Pending" %>
                    <asp:Button ID="DoneButton" runat="server" Text="Mark Done" CommandArgument='<%# Eval("Id") %>' OnClick="DoneButton_Click" />
                    <asp:Button ID="DeleteButton" runat="server" Text="Delete" CommandArgument='<%# Eval("Id") %>' OnClick="DeleteButton_Click" />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </form>
</body>
</html>
