<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tickets.aspx.cs" Inherits="WebApplication1.TicketsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml%22%3E
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" 
            Text="Ticket Registration Form" Font-Bold="True" Font-Underline="True"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Enter your name:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Type:"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem Value="Adult">Adult 19+ $23.00</asp:ListItem>
                <asp:ListItem Value="Youth">Youth 13-18 $18.00</asp:ListItem>
                <asp:ListItem Value="Senior">Senior 65+ $18.00</asp:ListItem>
                <asp:ListItem Value="Child">Child 12 &amp; Under FREE</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Amount:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Number"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
        </p>
        <asp:Label ID="Label6" runat="server" ForeColor="Highlight" Text="Label6" 
            Visible="False"></asp:Label>
    </form>
</body>
</html>