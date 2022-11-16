<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="WebApplication1.loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        div {text-align: center}
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 style ="font-size:40px; font-style: italic;"; face = "Verdana"> MFA, The Museum Of Fine Arts Login Page
        </h1>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        <div>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <br />
            <br />


        &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="144px" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Create Customer Account" Width="215px" />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
