<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ticketsReport.aspx.cs" Inherits="WebApplication1.ticketsReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Tickets Report<br />
            <br />
            Start Date<asp:TextBox ID="StartDateBox" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;End Date<asp:TextBox ID="EndDateBox" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <br />
            Ticket Type<asp:DropDownList ID="TicketDrop" runat="server" DataSourceID="SqlDataSourceTicketType" DataTextField="ticket_Type" DataValueField="ticket_Type">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceTicketType" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT ticket_Type FROM museumSchema.Tickets WHERE ticket_Type != 'Child' AND ticket_Type != 'Member'"></asp:SqlDataSource>
            <br />
            <asp:Button ID="ReportButton" runat="server" OnClick="ReportButton_Click" Text="Generate Report" />
        </div>
        <br />
        <br />
        Percentage of Ticket Type Revenue Compared to Total Ticket Revenue<br />
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourcePieChart">
            <Series>
                <asp:Series ChartType="Pie" Name="Series1" XValueMember="ticket Category" YValueMembers="Revenue" Legend="Legend1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Legends>
                <asp:Legend Name="Legend1">
                </asp:Legend>
            </Legends>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSourcePieChart" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT total_Revenue AS 'Revenue', ticketType AS 'ticket Category' FROM museumSchema.ticketReportSupportTable"></asp:SqlDataSource>
        <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSourcePieChart2">
            <Series>
                <asp:Series ChartType="Pie" Name="Series1" XValueMember="ticketType" YValueMembers="total_Revenue">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Legends>
                <asp:Legend Name="Legend1">
                </asp:Legend>
            </Legends>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSourcePieChart2" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT * FROM museumSchema.ticketReportSupportTableB"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceMainTableB">
                <Columns>
                    <asp:BoundField DataField="Ticket Type" HeaderText="Ticket Type" SortExpression="Ticket Type" />
                    <asp:BoundField DataField=" Total Revenue" HeaderText=" Total Revenue" SortExpression=" Total Revenue" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceMainTableB" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT ticketType AS 'Ticket Type', total_Revenue AS ' Total Revenue' FROM museumSchema.ticketReportSupportTableB"></asp:SqlDataSource>
        </p>
        <asp:GridView ID="reportView" runat="server" AutoGenerateColumns="False" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" />
                <asp:BoundField DataField="Customer" HeaderText="Customer Name" />
                <asp:BoundField DataField="Tickets Bought" HeaderText="Tickets Bought" />
                <asp:BoundField DataField="Total Price" HeaderText="Total Price" />
            </Columns>
        </asp:GridView>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
