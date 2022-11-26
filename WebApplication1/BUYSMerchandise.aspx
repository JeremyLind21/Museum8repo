<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BUYSMerchandise.aspx.cs" Inherits="WebApplication1.BUYSMerchandise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Merchandise Purchase Page<br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="item_name" DataSourceID="SqlDataSourceMerchandiseView">
            <Columns>
                <asp:BoundField DataField="item_name" HeaderText="item_name" ReadOnly="True" SortExpression="item_name" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="item_amount" HeaderText="item_amount" SortExpression="item_amount" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceMerchandiseView" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT item_name, price, item_amount FROM museumSchema.Merchandise"></asp:SqlDataSource>
        <br />
        Customer Name<br />
        <asp:DropDownList ID="CustNameDrop" runat="server" DataSourceID="SqlDataSource1" DataTextField="cName" DataValueField="cName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT cName FROM museumSchema.Customer"></asp:SqlDataSource>
        <br />
        <br />
        Purchase Item Name<br />
        <asp:TextBox ID="ItemNameBox" runat="server"></asp:TextBox>
        <br />
        <br />
        Amount
        <br />
        <asp:TextBox ID="ItemAmountBox" runat="server"></asp:TextBox>
        <br />
        <br />
        Purchase Date<br />
        <asp:TextBox ID="DateBox" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Purchase" />
    </form>
</body>
</html>
