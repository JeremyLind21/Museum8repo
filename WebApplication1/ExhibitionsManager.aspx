<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExhibitionsManager.aspx.cs" Inherits="WebApplication1.ExhibitionsManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style ="background-color:#ffffe0">
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <asp:Panel ID="Panel1" runat="server">
            Exhibitions Manager Control<br /> Notable Propertes: ExhibitName (PK), Artist Name(FK), Location Held (FK, INTS between 1-8)<br />
            <br />
            <br />
            Insert (Leave FK&#39;s Blank if unsure about available values for FK&#39;s)<br /> Exhibit Name<br /> <asp:TextBox ID="ExhibitNameField" runat="server"></asp:TextBox>
            <br />
            Artist Name
            <br />
            <asp:DropDownList ID="ArtistDropDownList" runat="server" DataSourceID="SqlDataSourceArtistList" DataTextField="artistName" DataValueField="artistName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceArtistList" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT artistName FROM museumSchema.Artist"></asp:SqlDataSource>
            <br />
            Location Held<br /> 
            <asp:DropDownList ID="LocationDropDownList" runat="server" DataSourceID="SqlDataSourceLocationNums" DataTextField="locName" DataValueField="locName">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceLocationNums" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT locName FROM museumSchema.Location WHERE locName = 'Gallery' OR locName = 'Exhibition Room'"></asp:SqlDataSource>
            <br />
            Start Date<br /> <asp:TextBox ID="StartDateField" runat="server" OnTextChanged="StartDateField_TextChanged" TextMode="Date"></asp:TextBox>
            <br />
            End Date<br /> <asp:TextBox ID="EndDateField" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Button ID="InsertButton" runat="server" OnClick="InsertButton_Click" Text="Insert" />
            <br />
            <asp:Label ID="ErrorLabel" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="exhibit_name" DataSourceID="SqlDataSourceExhibitionsManager" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="exhibit_name" HeaderText="exhibit_name" ReadOnly="True" SortExpression="exhibit_name" />
                    <asp:BoundField DataField="artist_name" HeaderText="artist_name" SortExpression="artist_name" />
                    <asp:BoundField DataField="location_num" HeaderText="location_num" SortExpression="location_num" />
                    <asp:BoundField DataField="start_dates" HeaderText="start_dates" SortExpression="start_dates" />
                    <asp:BoundField DataField="end_dates" HeaderText="end_dates" SortExpression="end_dates" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceExhibitionsManager" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT * FROM museumSchema.Exhibitions"></asp:SqlDataSource>
            <br />
            Update (Empty Spaces means you want updated tuple to have NULL values for that attribute)<br /> (Leave FK&#39;s Blank if unsure about available values for FK&#39;s)<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            Update Exhibit Named<br />
            <asp:TextBox ID="oldExhibitName" runat="server"></asp:TextBox>
            <br />
            to which new values?<br />
            <br />
            New Exhibit Name<br />
            <asp:TextBox ID="newExhibitName" runat="server"></asp:TextBox>
            <br />
            New Artist Name<br />
            <asp:DropDownList ID="newArtistDropDown" runat="server" DataSourceID="SqlDataSourceArtistList" DataTextField="artistName" DataValueField="artistName">
            </asp:DropDownList>
            <br />
            New Location<br />
            <asp:DropDownList ID="newLocationDropDown" runat="server" DataSourceID="SqlDataSourceLocationNums" DataTextField="locName" DataValueField="locName">
            </asp:DropDownList>
            <br />
            New Start Date<br />
            <asp:TextBox ID="newStartDate" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            New End Date<br />
            <asp:TextBox ID="newEndDate" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="Update" />
            <br />
            <asp:Label ID="ErrorLabel2" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
            Delete Exhibit Named<br />
            <asp:TextBox ID="deleteExhibitNameTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="DeleteButton" runat="server" OnClick="DeleteButton_Click" Text="Delete" />
            <br />
            <asp:Label ID="ErrorLabel3" runat="server" Text="Label" Visible="False"></asp:Label>
            <br />
            <br />
        </asp:Panel>
    </form>
</body>
</html>
