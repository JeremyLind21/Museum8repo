<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Merchandise.aspx.cs" Inherits="WebApplication1.Merchandise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="30pt" Font-Underline="True" Text="Merchandise Manage"></asp:Label>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="18pt" Text="Add Merchandise"></asp:Label>
            <br />
            <asp:Label ID="Label10" runat="server" Text="* entries required." Font-Size="10pt" ForeColor="#0066FF"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="New Item Name: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="188px"></asp:TextBox>
            <asp:Label ID="Label14" runat="server" Font-Size="10pt" ForeColor="#0066FF" Text="*"></asp:Label>
            <br />
            <asp:Label ID="Label5" runat="server" Text="New Item Price: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:Label ID="Label15" runat="server" Font-Size="10pt" ForeColor="#0066FF" Text="*"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Collection: "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Exhibition: "></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Item Amount: "></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:Label ID="Label16" runat="server" Font-Size="10pt" ForeColor="#0066FF" Text="*"></asp:Label>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Merch Sales: "></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label13" runat="server" Text="Max Stock: "></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <asp:Label ID="Label17" runat="server" Font-Size="10pt" ForeColor="#0066FF" Text="*"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit New Item" />
            <br />
            <asp:Label ID="Label11" runat="server" Text="Label" Font-Size="10pt" ForeColor="#3366FF" Visible="False"></asp:Label>
        </p>
            <p>
                &nbsp;</p>
        <p>
            <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="18pt" Text="Remove Item"></asp:Label>
            <br />
            <asp:Label ID="Label23" runat="server" Text="All entries required." Font-Size="10pt" ForeColor="#0066FF"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label24" runat="server" Text="Remove Item Name: "></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Remove Item" />
            <br />
            <asp:Label ID="Label21" runat="server" Text="Label" Font-Size="10pt" ForeColor="#3366FF" Visible="False"></asp:Label>
        </p>
            <p>
                &nbsp;</p>
        <p>
            <asp:Label ID="Label32" runat="server" Font-Bold="True" Font-Size="18pt" Text="Search Merchandise Item"></asp:Label>
            <br />
            <asp:Label ID="Label33" runat="server" Text="One or more entries required. No entries search all." Font-Size="10pt" ForeColor="#0066FF"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label34" runat="server" Text="New Item Name: "></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server" Width="188px"></asp:TextBox>
            <br />
            <asp:Label ID="Label36" runat="server" Text="New Item Price: "></asp:Label>
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label38" runat="server" Text="Collection: "></asp:Label>
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label39" runat="server" Text="Exhibition: "></asp:Label>
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label40" runat="server" Text="Item Amount: "></asp:Label>
            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label42" runat="server" Text="Merch Sales: "></asp:Label>
            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label43" runat="server" Text="Max Stock: "></asp:Label>
            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Search Item(s)" />
            <br />
            <asp:Label ID="Label30" runat="server" Text="Label" Font-Size="10pt" ForeColor="#3366FF" Visible="False"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="item_name" HeaderText="Item Name" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="collection_merch" HeaderText="Collection" />
                    <asp:BoundField DataField="exhibition_merch" HeaderText="Exhibition" />
                    <asp:BoundField DataField="item_amount" HeaderText="Item Amount" />
                    <asp:BoundField DataField="merchSales" HeaderText="Sales" />
                    <asp:BoundField DataField="maxStock" HeaderText="Max Stock" />
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
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
