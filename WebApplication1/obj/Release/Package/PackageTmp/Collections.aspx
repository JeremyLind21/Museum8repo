<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Collections.aspx.cs" Inherits="WebApplication1.Collections" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 498px">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="30pt" Font-Underline="True" Text="Collections Page"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="18pt" Text="Add Collection"></asp:Label>
        </p>
        <asp:Label ID="Label3" runat="server" Text="New Collection Name: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="New Collection Author: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="New Collection Location: "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="InsertSubmitButton" runat="server" OnClick="InsertSubmitButton_Click" Text="Submit" />
        <br />
        <asp:Label ID="Label12" runat="server" Font-Size="8pt" ForeColor="Blue" Visible="False"></asp:Label>
        <br />
        <br />
        <p>
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="18pt" Text="Delete Collection"></asp:Label>
        </p>
        <asp:Label ID="Label7" runat="server" Text="Delete Collection Name: "></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="DeleteSubmitButton" runat="server" Text="Submit" OnClick="DeleteSubmitButton_Click" />
        <br />
        <asp:Label ID="Label15" runat="server" Font-Size="8pt" ForeColor="Blue" Visible="False"></asp:Label>
        <br />
        <br />
        <p>
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="18pt" Text="Search Collection"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label17" runat="server" Font-Size="9pt" ForeColor="Blue" Text="One or more entries required"></asp:Label>
        </p>
        <asp:Label ID="Label9" runat="server" Text="Collection Name: "></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Collection Author: "></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label11" runat="server" Text="Collection Location: "></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="SearchSubmitButton" runat="server" Text="Submit" OnClick="SearchSubmitButton_Click" />
        <br />
        <asp:Label ID="Label16" runat="server" Font-Size="8pt" ForeColor="Blue" Visible="False"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="collectionName" HeaderText="Collection Name" ReadOnly="True" />
                <asp:BoundField DataField="collectionAuthor" HeaderText="Collection Author" ReadOnly="True" />
                <asp:BoundField DataField="location_Num" HeaderText="Collection Location" ReadOnly="True" />
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
        <br />
        <p>
            <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="18pt" Text="Modify Collection"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label19" runat="server" Font-Size="9pt" ForeColor="Blue" Text="One or more entries required"></asp:Label>
        </p>
        <asp:Label ID="Label20" runat="server" Text="Collection Name: "></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label24" runat="server" Text="New Collection Name: "></asp:Label>
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label21" runat="server" Text="Collection Author: "></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label25" runat="server" Text="New Collection Author: "></asp:Label>
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label22" runat="server" Text="Collection Location: "></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label26" runat="server" Text="New Collection Location: "></asp:Label>
        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="ModifySubmitButton" runat="server" OnClick="ModifySubmitButton_Click" Text="Submit" />
        <br />
        <asp:Label ID="Label23" runat="server" Font-Size="8pt" ForeColor="Blue" Visible="False"></asp:Label>
        <br />
    </form>

</body>
</html>
