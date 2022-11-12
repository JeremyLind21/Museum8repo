<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tickets.aspx.cs" Inherits="WebApplication1.Tickets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Ticket Registration Form"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Member:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Location:"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>Films</asp:ListItem>
                <asp:ListItem>Exhibitions</asp:ListItem>
                <asp:ListItem>Collections</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Date:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="DateTimeLocal"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Age:"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem>Adult 19+  $23.00</asp:ListItem>
                <asp:ListItem>Senior 65+ $18.00</asp:ListItem>
                <asp:ListItem>Youth 13-18 $18.00</asp:ListItem>
                <asp:ListItem>Child 12 &amp; Under FREE</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 29px" Text="Submit" />
        </p>
    </form>
</body>
</html>


