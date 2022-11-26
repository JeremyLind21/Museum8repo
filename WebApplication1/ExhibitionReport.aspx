<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExhibitionReport.aspx.cs" Inherits="WebApplication1.ExhibitionReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Start Date<asp:TextBox ID="startDateBox" runat="server" TextMode="Date"></asp:TextBox>
            End Date<asp:TextBox ID="endDateBox" runat="server" TextMode="Date"></asp:TextBox>
        </div>
        <p>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                <Series>
                    <asp:Series ChartType="Pie" Name="Series1" XValueMember="item_name" YValueMembers="price">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT item_name, price FROM museumSchema.Merchandise"></asp:SqlDataSource>
    </form>
</body>
</html>
