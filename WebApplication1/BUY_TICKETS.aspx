<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BUY_TICKETS.aspx.cs" Inherits="WebApplication1.BUY_TICKETS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            BUY TICKETS<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ticket_Type" DataSourceID="SqlDataSourceTicketView" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="ticket_Type" HeaderText="ticket_Type" ReadOnly="True" SortExpression="ticket_Type" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceTicketView" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT * FROM museumSchema.Tickets"></asp:SqlDataSource>
            <br />
            Customer Name<br />
            <asp:DropDownList ID="CustDrop" runat="server" DataSourceID="SqlDataSourceCustomerDrop" DataTextField="cName" DataValueField="cName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceCustomerDrop" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT cName FROM museumSchema.Customer"></asp:SqlDataSource>
            <br />
            Ticket Type<br />
            <br />
            <asp:DropDownList ID="TicketTypeDrop" runat="server" DataSourceID="SqlDataSourceTicketType" DataTextField="ticket_Type" DataValueField="ticket_Type">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceTicketType" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT ticket_Type FROM museumSchema.Tickets"></asp:SqlDataSource>
            <br />
            Amount<br />
            <asp:TextBox ID="AmountBox" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            Exhibition (+ $5) Check for No Exhibit<asp:CheckBox ID="CheckBox1" runat="server" />
            <br />
            <asp:DropDownList ID="ExhibitDrop" runat="server" DataSourceID="SqlDataSourceExhibitionList" DataTextField="exhibit_name" DataValueField="exhibit_name">
                <asp:ListItem>No Exhibit</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceExhibitionList" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT exhibit_name FROM museumSchema.Exhibitions"></asp:SqlDataSource>
            <br />
            Collection(+1) Check for No Collection<asp:CheckBox ID="CheckBox2" runat="server" />
            <br />
            <asp:DropDownList ID="CollectionDrop" runat="server" DataSourceID="SqlDataSourceCollectionView" DataTextField="collectionName" DataValueField="collectionName">
                <asp:ListItem>No Collection</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceCollectionView" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT collectionName FROM museumSchema.Collections"></asp:SqlDataSource>
            <br />
            Date Of Purchase<br />
            <asp:TextBox ID="purchaseDate" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Button ID="PurchaseButton" runat="server" OnClick="PurchaseButton_Click" Text="Purchase" />
        </div>
    </form>
</body>
</html>
