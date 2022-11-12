<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrontPage.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style ="background-color:#ffffe0">
    <form id="form1" runat="server">
        <h1 style ="font-size:40px; font-style: italic;"; face = "Verdana"> MFA, The Museum Of Fine Arts
            <asp:Button ID="CollectionsButton" runat="server" Text="Collections" OnClick="CollectionsButton_Click" />
            <asp:Button ID="EventsButton" runat="server" Text="Events " Width="117px" />
            <asp:Button ID="Button1" runat="server" Text="Films" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Exhibitions" />
            <asp:Button ID="LoginPage" runat="server" Text="Customer / Manager Login" OnClick="Button3_Click" />
        </h1>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Exhibitions you might be interested in!"></asp:Label>
        </p>
        <asp:Image ID="Image1" runat="server" Height="371px" ImageUrl="https://static.mfah.com/images/ernie-barnes-sugar-shack.10513822464579747326.jpg?width=290&amp;height=290&amp;bgcolor=blur" Width="487px" ImageAlign="Left" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label style="font-size:40px" ID="Label1" runat="server" Text="The Sugar Shack: Through December 31, 2022" Font-Size="Large"></asp:Label>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Image ID="Image2" runat="server" Height="429px" ImageAlign="Right" ImageUrl="https://static.mfah.com/images/philip-guston-the-ladder.4037849941016239320.jpg?width=290&amp;height=290&amp;bgcolor=blur" Width="480px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label style="font-size:40px" ID="Label4" runat="server" Text="Philip Guston Now: Thorugh Jan 16, 2023" Font-Size="Large"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
    </body>
</html>
