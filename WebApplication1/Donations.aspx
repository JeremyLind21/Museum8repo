<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donations.aspx.cs" Inherits="WebApplication1.Donations" %>

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
    <form id="form1" runat="server" style="width: 1253px">
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="PanelUnderline1" runat="server" BackColor="#CCCCCC" Height="18px" Style="margin-top:20px" Width="1251px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;</asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" BorderStyle="None" Font-Names="Century Gothic" Font-Size="Medium" Height="350px" Width="1253px" Font-Bold="False" style="margin-top: 0px">
            &nbsp;<br /> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelContentHeader" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" Text="Make a Donation"></asp:Label>
            <br />
            <asp:Panel ID="PanelUnderline" runat="server" BackColor="#666666" Height="3px" Style="margin-left:25px" Width="1200px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<br />
                <br />
                <br />
                &nbsp;
                <br />
                <br />
                &nbsp;&nbsp;
                <br />
            </asp:Panel>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonDonate100" runat="server" BackColor="#CCCCCC" BorderStyle="Dotted" Height="55px" OnClick="ButtonDonate100_Click" Text="$100" Width="105px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonDonate50" runat="server" BackColor="#CCCCCC" BorderStyle="Dotted" Height="55px" OnClick="ButtonDonate50_Click" Text="$50" Width="105px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonDonate20" runat="server" BackColor="#CCCCCC" BorderStyle="Dotted" Height="55px" OnClick="ButtonDonate20_Click" Text="$20" Width="105px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonDonate10" runat="server" BackColor="#CCCCCC" BorderStyle="Dotted" Height="55px" OnClick="ButtonDonate10_Click" Text="$10" Width="105px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonDonate5" runat="server" BackColor="#CCCCCC" BorderStyle="Dotted" Height="55px" OnClick="ButtonDonate5_Click" Text="$5" Width="105px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Selected Amount: &nbsp;<asp:Label ID="LabelDonationAmount" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" Text="   Select Options" Width="179px"></asp:Label>
            &nbsp;&nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelFname" runat="server" Text="First Name:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="InputFname" runat="server" BackColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Names="Century Gothic" OnTextChanged="InputFname_TextChanged"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelLname" runat="server" Text="Last Name:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="InputLname" runat="server" BackColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Names="Century Gothic" OnTextChanged="InputLname_TextChanged"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonDonateSubmit" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Names="Century Gothic" Text="Submit" OnClick="ButtonDonateSubmit_Click" />
            </asp:Panel>
                <asp:Panel ID="PanelUnderline0" runat="server" BackColor="#CCCCCC" Height="18px" Style="margin-top:20px" Width="1253px">
        </asp:Panel>
        </form>
</body>
</html>


