<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Artist.aspx.cs" Inherits="WebApplication1.Artist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style ="background-color:#ffffe0">
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Add Artist"></asp:Label>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Artist Name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Artist Date of Birth:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="Artist Date of Death:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Artist ID:" ToolTip="7 Digit ID"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" MaxLength="7" ToolTip="7 Digit ID"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" ForeColor="Highlight" Text="Label6" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Delete Artist"></asp:Label>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Artist ID:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" MaxLength="7"></asp:TextBox>
        </p>
        <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" ForeColor="Highlight" Text="Label9" Visible="False"></asp:Label>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Search Artist"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label12" runat="server" Text="Artist ID:"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" MaxLength="7"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="artistName" HeaderText="Artist Name" 
                    ReadOnly="True" />
                <asp:BoundField DataField="dateOfBirth" HeaderText="Artist Date of Birth" 
                    ReadOnly="True" />
                <asp:BoundField DataField="dateOfDeath" HeaderText="Artist Date of Death" 
                    ReadOnly="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        </p>
        <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />
        <p>
            <asp:Label ID="Label13" runat="server" ForeColor="Highlight" Text="Label13" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Modify Artist"></asp:Label>
        <p>
            <asp:Label ID="Label15" runat="server" Text="Artist Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label18" runat="server" Text="New Artist Name:"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label16" runat="server" Text="Artist Date of Birth:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox8" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Text="New Date of Birth:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox11" runat="server" TextMode="Date"></asp:TextBox>
        <p>
            <asp:Label ID="Label17" runat="server" Text="Artist Date of Death:"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label20" runat="server" Text="New Date of Death:"></asp:Label>
            <asp:TextBox ID="TextBox12" runat="server" TextMode="Date"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" Text="Submit" OnClick="Button4_Click" />
        </p>
        <asp:Label ID="Label21" runat="server" ForeColor="Highlight" Text="Label21" Visible="False"></asp:Label>
    </form>
</body>
</html>

        <div>
        </div>


