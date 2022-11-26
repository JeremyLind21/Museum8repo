<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FilmsManager.aspx.cs" Inherits="WebApplication1.FilmsDirectorManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            Films/ Directors Manager View</p>
        <p>
            Films </p>
        <p>
            <asp:GridView ID="FilmsView" runat="server" AutoGenerateColumns="False" DataKeyNames="filmName" DataSourceID="SqlDataSourceFilms" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="filmName" HeaderText="filmName" ReadOnly="True" SortExpression="filmName" />
                    <asp:BoundField DataField="directorName" HeaderText="directorName" SortExpression="directorName" />
                    <asp:BoundField DataField="filmCompany" HeaderText="filmCompany" SortExpression="filmCompany" />
                    <asp:BoundField DataField="releaseDate" HeaderText="releaseDate" SortExpression="releaseDate" />
                    <asp:BoundField DataField="film_Location" HeaderText="film_Location" SortExpression="film_Location" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceFilms" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT * FROM museumSchema.Films"></asp:SqlDataSource>
        </p>
        <p>
            Directors </p>
        <p>
            <asp:GridView ID="DirectorView" runat="server" AutoGenerateColumns="False" DataKeyNames="directorName" DataSourceID="SqlDataSourceDirectors" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="directorName" HeaderText="directorName" ReadOnly="True" SortExpression="directorName" />
                    <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                    <asp:BoundField DataField="DateOfDeath" HeaderText="DateOfDeath" SortExpression="DateOfDeath" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceDirectors" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT * FROM museumSchema.Director"></asp:SqlDataSource>
        </p>
        <p>
            Films Insert&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            &nbsp;</p>
        <p>
            Film Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <p>
            &nbsp;<asp:TextBox ID="filmNameInsert" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            Director Name</p>
        <asp:DropDownList ID="directiorNameInsertDrop" runat="server" DataSourceID="SqlDataSourceDirectorList" DataTextField="directorName" DataValueField="directorName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceDirectorList" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT directorName FROM museumSchema.Director "></asp:SqlDataSource>
        <br />
        <br />
        Film Company<br />
        <br />
        <asp:TextBox ID="filmCompanyInsert" runat="server"></asp:TextBox>
        <br />
        <br />
        Release Date<br />
        <br />
        <asp:TextBox ID="releaseDateInsert" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <br />
        Film Location<br />
        <asp:DropDownList ID="filmLocationInsertDrop" runat="server" DataSourceID="SqlDataSourceFilmLocation" DataTextField="locName" DataValueField="locName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceFilmLocation" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT locName FROM museumSchema.Location"></asp:SqlDataSource>
        <asp:Button ID="InsertFilms" runat="server" OnClick="InsertFilms_Click" Text="Insert" />
        <p>
            Update:</p>
        <p>
            Old Film Name</p>
        <p>
            <asp:TextBox ID="oldFilmNameUpdate" runat="server"></asp:TextBox>
        </p>
        <p>
            New Film Name</p>
        <p>
            <asp:TextBox ID="newFilmNameUpdate" runat="server"></asp:TextBox>
        </p>
        <p>
            New Film Director</p>
        <asp:DropDownList ID="UpdateDirectorDrop" runat="server" DataSourceID="SqlDataSourceDirectorList" DataTextField="directorName" DataValueField="directorName">
        </asp:DropDownList>
        <br />
        <br />
        New Film Company<br />
        <br />
        <asp:TextBox ID="newFilmCompanyUpdate" runat="server"></asp:TextBox>
        <br />
        <br />
        New Release Date<br />
        <br />
        <asp:TextBox ID="newReleaseDateUpdate" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <br />
        New Location<br />
        <br />
        <asp:DropDownList ID="UpdateLocationDrop" runat="server" DataSourceID="SqlDataSourceFilmLocation" DataTextField="locName" DataValueField="locName">
        </asp:DropDownList>
        <br />
        <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="Update" />
        <br />
        <br />
        Delete<br />
        <br />
        Film Name<br />
        <asp:TextBox ID="DeleteFilmName" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="DeleteButton" runat="server" OnClick="DeleteButton_Click" Text="Delete" />
        <br />
        <br />
    </form>
</body>
</html>
