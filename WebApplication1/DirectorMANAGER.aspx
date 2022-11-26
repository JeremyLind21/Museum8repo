<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DirectorMANAGER.aspx.cs" Inherits="WebApplication1.DirectorMANAGER" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Directors Manage View<br />
            <br />
            <br />
            <br />
            <asp:GridView ID="DirectorView" runat="server" AutoGenerateColumns="False" DataKeyNames="directorName" DataSourceID="SqlDataSourceDirectorList">
                <Columns>
                    <asp:BoundField DataField="directorName" HeaderText="directorName" ReadOnly="True" SortExpression="directorName" />
                    <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                    <asp:BoundField DataField="DateOfDeath" HeaderText="DateOfDeath" SortExpression="DateOfDeath" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceDirectorList" runat="server" ConnectionString="<%$ ConnectionStrings:MuseumDBConnectionString %>" SelectCommand="SELECT * FROM museumSchema.Director"></asp:SqlDataSource>
            <br />
            <br />
            Insert<br />
            <br />
            Director Name<br />
            <asp:TextBox ID="InsertDirectorNameBox" runat="server"></asp:TextBox>
            <br />
            <br />
            Date Of Birth</div>
        <asp:TextBox ID="InsertBirthdayBox" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <br />
        Date Of Death (Leave blank if the director is still alive)<br />
        <asp:TextBox ID="InsertDeathDayBox" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <asp:Button ID="InsertButton" runat="server" OnClick="InsertButton_Click" Text="Insert" />
        <br />
        <br />
        Update<br />
        <br />
        Director to be updated<br />
        <asp:TextBox ID="oldDirectorNameBox" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        <br />
        New Director Name<br />
        <asp:TextBox ID="newDirectorNameBox" runat="server"></asp:TextBox>
        <br />
        <br />
        New Date Of Birth<br />
        <asp:TextBox ID="newBirthDayBox" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <br />
        New Date Of Death<br />
        <asp:TextBox ID="newDeathDayBox" runat="server" TextMode="Date"></asp:TextBox>
        <br />
        <asp:Button ID="UpdateButton" runat="server" OnClick="UpdateButton_Click" Text="Update" />
        <br />
        <br />
        Delete
        <br />
        <br />
        Director Name<br />
        <asp:TextBox ID="DeleteDirectorBox" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="DeleteButton" runat="server" OnClick="DeleteButton_Click" Text="Delete" />
        </p>
    </form>
</body>
</html>
