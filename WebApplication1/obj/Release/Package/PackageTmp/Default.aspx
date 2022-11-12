<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Please login to access the home page associated with your account&#39;s authorization level.</h1>
        <h2>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        </h2>
    </div>

    <div class="row">
        <div class="col-md-4">
            <p>
                <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            </p>
        </div>
        <div class="col-md-4">
            <h2>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </h2>
        </div>
        <div class="col-md-4">
            <h2>
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </h2>
        </div>
    </div>

</asp:Content>
