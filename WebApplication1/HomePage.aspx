<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication1.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width :80%;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="width: 1253px; font-weight: 700;">
        <table class="auto-style4" style="width: 100%">
            <tr>
                <td class="auto-style1">
        <asp:Label ID="LabelHeader" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="Black" Text="MFA, The Museum Of Fine Arts"></asp:Label>
                </td>
                <td class="auto-style2" colspan="1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="ButtonLogIn" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Bold="False" Font-Names="Century Gothic" ForeColor="Black" OnClick="ButtonLogIn_Click1" Text="Sign In" />&nbsp;</td>
            </tr>
        </table>
        <br />
            <asp:Button ID="ButtonHome" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Bold="False" Font-Names="Century Gothic" ForeColor="Black" OnClick="ButtonHome_Click1" Text="Home" />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="ButtonCollections" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Bold="False" Font-Names="Century Gothic" ForeColor="Black" OnClick="ButtonCollections_Click1" Text="Collections" />
        &nbsp; &nbsp;<asp:Button ID="ButtonExhibitions" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Bold="False" Font-Names="Century Gothic" ForeColor="Black" OnClick="ButtonExhibitions_Click1" Text="Exhibitions" />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="ButtonFilms" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Bold="False" Font-Names="Century Gothic" ForeColor="Black" OnClick="ButtonFilms_Click1" Text="Films" />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="ButtonMemberships" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Bold="False" Font-Names="Century Gothic" ForeColor="Black" OnClick="ButtonMemberships_Click1" Text="Memberships" />
        &nbsp;&nbsp; <asp:Button ID="ButtonDonate" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Bold="False" Font-Names="Century Gothic" ForeColor="Black" OnClick="ButtonDonate_Click1" Text="Donate" />
        &nbsp;&nbsp;&nbsp;<asp:Button ID="ButtonTickets" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Bold="False" Font-Names="Century Gothic" ForeColor="Black" OnClick="ButtonTickets_Click1" Text="Tickets" />
        &nbsp;&nbsp;<asp:Panel ID="PanelUnderline1" runat="server" BackColor="#CCCCCC" Height="18px" Style="margin-top:20px" Width="1251px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;</asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" BorderStyle="None" Font-Names="Century Gothic" Font-Size="Medium" Height="1300px" Width="1253px" Font-Bold="False" style="margin-top: 0px">
            &nbsp;<br />
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelContentHeader" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" Text="Exhibitions you might be interested in!"></asp:Label>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" Height="371px" ImageUrl="https://static.mfah.com/images/ernie-barnes-sugar-shack.10513822464579747326.jpg?width=290&amp;height=290&amp;bgcolor=blur" Width="487px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelContentHeader0" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" Height="129px" Text="The Sugar Shack: Through December 31, 2022" Width="405px"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelContentHeader1" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" Height="182px" Text="Philip Guston Now: Through January 16, 2023" Width="405px"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Image ID="Image2" runat="server" Height="429px" ImageUrl="https://static.mfah.com/images/philip-guston-the-ladder.4037849941016239320.jpg?width=290&amp;height=290&amp;bgcolor=blur" Width="480px" />
            </asp:Panel>
                <asp:Panel ID="PanelUnderline0" runat="server" BackColor="#CCCCCC" Height="18px" Style="margin-top:20px" Width="1253px">
        </asp:Panel>
        </form>
</body>
</html>


