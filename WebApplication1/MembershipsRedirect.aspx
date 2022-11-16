<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MembershipsRedirect.aspx.cs" Inherits="WebApplication1.MembershipsRedirect" %>

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
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel1" runat="server" BackColor="#FFFFCC" BorderStyle="None" Font-Names="Century Gothic" Font-Size="Medium" Height="500px" Width="1253px" Font-Bold="False" style="margin-top: 0px">
            &nbsp;<br />
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelActiveMemberships" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" Text="Active Memberships"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" HorizontalAlign="Right" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-right: 40px" AutoGenerateColumns="False" Font-Size="Small" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="memberName" HeaderText="Member Name" />
                    <asp:BoundField DataField="membership_ID" HeaderText="Member ID" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="expiration_date" HeaderText="Membership Expiration" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelFname" runat="server" Text="First Name:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="InputFname" runat="server" BackColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Names="Century Gothic" OnTextChanged="InputFname_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelLname" runat="server" Text="Last Name:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="InputLname" runat="server" BackColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Names="Century Gothic" OnTextChanged="InputLname_TextChanged"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelMemberID" runat="server" Text="Member ID:"></asp:Label>
&nbsp;
            <asp:TextBox ID="InputMemberID" runat="server" BackColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Names="Century Gothic" OnTextChanged="InputLname_TextChanged"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="ButtonSearchMembership" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Bold="False" Font-Names="Century Gothic" ForeColor="Black" OnClick="ButtonSearchMembership_Click1" Text="Search" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelCheckMembership" runat="server" Font-Size="Smaller" Visible="False"></asp:Label>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelUnsubscribe" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="Black" Text="Unsubscribe"></asp:Label>
            &nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelFname0" runat="server" Text="First Name:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="InputFname0" runat="server" BackColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Names="Century Gothic" OnTextChanged="InputFname0_TextChanged"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelLname0" runat="server" Text="Last Name:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="InputLname0" runat="server" BackColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Names="Century Gothic" OnTextChanged="InputLname0_TextChanged"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelMemberID0" runat="server" Text="Member ID:"></asp:Label>
            &nbsp;
            <asp:TextBox ID="InputMemberID0" runat="server" BackColor="White" BorderStyle="Solid" BorderWidth="1px" Font-Names="Century Gothic" OnTextChanged="InputLname_TextChanged"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ButtonUnsubscribe" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Bold="False" Font-Names="Century Gothic" ForeColor="Black" OnClick="ButtonUnsubscribe_Click1" Text="Submit" />
            <br />
            &nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelUnsubSubmit" runat="server" Font-Size="Smaller" Visible="False"></asp:Label>
            </asp:Panel>
                <asp:Panel ID="PanelUnderline0" runat="server" BackColor="#CCCCCC" Height="18px" Style="margin-top:20px" Width="1253px">
        </asp:Panel>
        </form>
</body>
</html>


