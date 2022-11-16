<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ArtManage.aspx.cs" Inherits="WebApplication1.Art" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="30pt" Font-Underline="True" Text="Art Manage"></asp:Label>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="18pt" Text="Add Art"></asp:Label>
            <br />
            <asp:Label ID="Label10" runat="server" Text="All entries required." Font-Size="10pt" ForeColor="#0066FF"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="New Art Name: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="New Art Date of Creation: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="New Art's Artist Name: "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="New Art Location: "></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="New Art Exhibition: "></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label9" runat="server" Text="New Art Collection: "></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit New Art" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label11" runat="server" Text="Label" Font-Size="10pt" ForeColor="#3366FF" Visible="False"></asp:Label>
            <asp:Label ID="Label12" runat="server" Font-Size="10pt" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="18pt" Text="Remove Art"></asp:Label>
            <br />
            <asp:Label ID="Label14" runat="server" Text="All entries required." Font-Size="10pt" ForeColor="#0066FF"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label15" runat="server" Text="Remove Art ID: "></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Remove" />
            <br />
            <asp:Label ID="Label21" runat="server" Text="Label" Font-Size="10pt" ForeColor="#3366FF" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="18pt" Text="Search Art"></asp:Label>
            <br />
            <asp:Label ID="Label23" runat="server" Text="One or more entries required. No entries search all." Font-Size="10pt" ForeColor="#0066FF"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label24" runat="server" Text="New Art Name: "></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label31" runat="server" Text="New Art ID: "></asp:Label>
            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label25" runat="server" Text="New Art Date of Creation: "></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server" TextMode="Date"></asp:TextBox>
            &nbsp;-
            <asp:TextBox ID="TextBox15" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Label ID="Label26" runat="server" Text="New Art's Artist Name: "></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label27" runat="server" Text="New Art Location: "></asp:Label>
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label28" runat="server" Text="New Art Exhibition: "></asp:Label>
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label29" runat="server" Text="New Art Collection: "></asp:Label>
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Search Art(s)" />
            <br />
            <asp:Label ID="Label30" runat="server" Text="Label" Font-Size="10pt" ForeColor="#3366FF" Visible="False"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="artName" HeaderText="Art Name" />
                    <asp:BoundField DataField="ID_no" HeaderText="ID Number" />
                    <asp:BoundField DataField="artistName" HeaderText="Artist Name" />
                    <asp:BoundField DataField="dateOfCreation" HeaderText="Date of Creation" />
                    <asp:BoundField DataField="location" HeaderText="Location Number" />
                    <asp:BoundField DataField="exhibition" HeaderText="Exhibition" />
                    <asp:BoundField DataField="collection" HeaderText="Collection" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Size="18pt" Text="Modify Art"></asp:Label>
            <br />
            <asp:Label ID="Label33" runat="server" Text="One or more entries required." Font-Size="10pt" ForeColor="#0066FF"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label34" runat="server" Text="Old Art Name: "></asp:Label>
            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label42" runat="server" Text="New Art Name: "></asp:Label>
            <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label35" runat="server" Text="Old Art Date of Creation: "></asp:Label>
            <asp:TextBox ID="TextBox18" runat="server" TextMode="Date"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label43" runat="server" Text="New Art Date of Creation: "></asp:Label>
            <asp:TextBox ID="TextBox24" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Label ID="Label36" runat="server" Text="Old Art's Artist Name: "></asp:Label>
            <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label44" runat="server" Text="New Art's Artist Name: "></asp:Label>
            <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label37" runat="server" Text="Old Art Location: "></asp:Label>
            <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label45" runat="server" Text="New Art Location: "></asp:Label>
            <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label38" runat="server" Text="Old Art Exhibition: "></asp:Label>
            <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label46" runat="server" Text="New Art Exhibition: "></asp:Label>
            <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label39" runat="server" Text="Old Art Collection: "></asp:Label>
            <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label47" runat="server" Text="New Art Collection: "></asp:Label>
            <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Modify Art(s)" />
            <br />
            <asp:Label ID="Label40" runat="server" Text="Label" Font-Size="10pt" ForeColor="#3366FF" Visible="False"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
