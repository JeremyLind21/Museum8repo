<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Location.aspx.cs" Inherits="WebApplication1.Location" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Location" Font-Overline="False" Font-Size="30pt"></asp:Label></div>
        <p>
            <asp:Label ID="Label6" runat="server" Font-Size="20pt" Font-Underline="True" Text="Inserting"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Location Name: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <asp:Label ID="Label7" runat="server" Text="Building Name: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Building Num: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Location Num: "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label9" runat="server" Text="Hours of Operation: "></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <asp:Label ID="Label10" runat="server" Text="Managers Name: "></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <p>
            <asp:Label ID="Label11" runat="server" Text="Managers SSN: "></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label12" runat="server" Text="Choices of Dining: "></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Insertion_Button" runat="server" OnClick="Insertion_Button_Click" Text="Submit" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label14" runat="server" Font-Size="20pt" Font-Underline="True" Text="Delete Location"></asp:Label>
        </p>
        <asp:Label ID="Label21" runat="server" Text="Building Num: "></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <p>
            <asp:Label ID="Label22" runat="server" Text="Location Num: "></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Deletion_Button" runat="server" OnClick="Insertion_Button_Click" Text="Submit" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label15" runat="server" Font-Size="20pt" Font-Underline="True" Text="Modify Location"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label23" runat="server" Text="Location Name: "></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label31" runat="server" Text="New Location Name: "></asp:Label>
            <asp:TextBox ID="TextBox12" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <asp:Label ID="Label24" runat="server" Text="Building Name: "></asp:Label>
        <asp:TextBox ID="TextBox13" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label32" runat="server" Text="New Building Name: "></asp:Label>
            <asp:TextBox ID="TextBox14" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p>
            <asp:Label ID="Label25" runat="server" Text="Building Num: "></asp:Label>
            <asp:TextBox ID="TextBox15" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label33" runat="server" Text="New Building Num: "></asp:Label>
            <asp:TextBox ID="TextBox16" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            <asp:Label ID="Label26" runat="server" Text="Location Num: "></asp:Label>
            <asp:TextBox ID="TextBox17" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label34" runat="server" Text="New Location Num: "></asp:Label>
            <asp:TextBox ID="TextBox18" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            <asp:Label ID="Label27" runat="server" Text="Hours of Operation: "></asp:Label>
            <asp:TextBox ID="TextBox19" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label35" runat="server" Text="New Hours of Operation: "></asp:Label>
            <asp:TextBox ID="TextBox20" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <asp:Label ID="Label28" runat="server" Text="Managers Name: "></asp:Label>
        <asp:TextBox ID="TextBox21" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label39" runat="server" Text="New Managers Name: "></asp:Label>
            <asp:TextBox ID="TextBox22" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p>
            <asp:Label ID="Label29" runat="server" Text="Managers SSN: "></asp:Label>
            <asp:TextBox ID="TextBox23" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label37" runat="server" Text="New Managers SSN: "></asp:Label>
            <asp:TextBox ID="TextBox24" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            <asp:Label ID="Label30" runat="server" Text="Choices of Dining: "></asp:Label>
            <asp:TextBox ID="TextBox25" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label36" runat="server" Text="New Choices of Dining: "></asp:Label>
            <asp:TextBox ID="TextBox26" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            <asp:Button ID="Modify_Button" runat="server" OnClick="Insertion_Button_Click" Text="Submit" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label40" runat="server" Font-Size="20pt" Font-Underline="True" Text="Search"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label41" runat="server" Text="Location Name: "></asp:Label>
            <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label42" runat="server" Text="Building Name: "></asp:Label>
        <asp:TextBox ID="TextBox28" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <p>
            <asp:Label ID="Label43" runat="server" Text="Building Num: "></asp:Label>
            <asp:TextBox ID="TextBox29" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label44" runat="server" Text="Location Num: "></asp:Label>
            <asp:TextBox ID="TextBox30" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label45" runat="server" Text="Hours of Operation: "></asp:Label>
            <asp:TextBox ID="TextBox31" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <asp:Label ID="Label46" runat="server" Text="Managers Name: "></asp:Label>
        <asp:TextBox ID="TextBox32" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <p>
            <asp:Label ID="Label47" runat="server" Text="Managers SSN: "></asp:Label>
            <asp:TextBox ID="TextBox33" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label48" runat="server" Text="Choices of Dining: "></asp:Label>
            <asp:TextBox ID="TextBox34" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Search_Button_Click" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="locName" HeaderText="Location Name" ReadOnly="True" />
                    <asp:BoundField DataField="buildiName" HeaderText="Building Name" ReadOnly="True" />
                    <asp:BoundField DataField="buildiNum" HeaderText="Building Num" ReadOnly="True" />
                    <asp:BoundField DataField="locNum" HeaderText="Location Num" ReadOnly="True" />
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
        </p>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="hrsOfOp" HeaderText="Hours of Operation" ReadOnly="True" />
                <asp:BoundField DataField="mgrName" HeaderText="Managers Name" ReadOnly="True" />
                <asp:BoundField DataField="mgrSSN" HeaderText="Managers SSN" ReadOnly="True" />
                <asp:BoundField DataField="dineChoice" HeaderText="Choices of Dining" ReadOnly="True" />
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
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
    </body>
</html>

