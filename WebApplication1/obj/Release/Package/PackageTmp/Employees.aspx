<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="WebApplication1.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style ="background-color:#ffffe0">
    <form id="form1" runat="server">
        <h1 style ="font-size:40px; font-style: italic;"; face = "Verdana"> MFA, The Museum Of Fine Arts
            <asp:Button ID="Button1" runat="server" Text="Manage Page" />
        </h1>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="30pt" Font-Underline="True" Text="EMPLOYEES"></asp:Label>
        <p>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="18pt" Text="Add Employee:"></asp:Label>
            <br />
            <asp:Label ID="Label29" runat="server" Text="All entries required." Font-Size="10pt" ForeColor="#FF5050"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="New Employee Name: "></asp:Label>
            <asp:TextBox ID="NewEmployeeName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="New Employee SSN: "></asp:Label>
            <asp:TextBox ID="NewEmployeeSSN" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="New Employee Supervisor SSN: "></asp:Label>
            <asp:TextBox ID="NewEmployeeSupSSN" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="New Employee Date of Birth: "></asp:Label>
            <asp:TextBox ID="NewEmployeeDOB" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="New Employee Gender: "></asp:Label>
            <asp:DropDownList ID="NewEmployeeGender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label9" runat="server" Text="New Employee Wage: "></asp:Label>
            <asp:TextBox ID="NewEmployeeWage" runat="server"></asp:TextBox>
            <asp:Label ID="Label10" runat="server" Font-Size="10pt" Text="(Per hour). Min: 7.50"></asp:Label>
            <br />
            <asp:Label ID="Label11" runat="server" Text="New Employee Job Title: "></asp:Label>
            <asp:TextBox ID="NewEmployeeJob" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label12" runat="server" Text="New Employee Location Number: "></asp:Label>
            <asp:TextBox ID="NewEmployeeLocation" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label13" runat="server" Text="New Employee Employement Start: "></asp:Label>
            <asp:TextBox ID="NewEmployeeStart" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Button ID="NewEmployeeSubmit" runat="server" Text="Submit New Employee" OnClick="NewEmployeeSubmit_Click" />
            <br />
            <asp:Label ID="Label30" runat="server" Text="Invisible message" ForeColor="#FF5050" Visible="False"></asp:Label>
            <asp:Label ID="Label34" runat="server" Text="Invisible new ID" ForeColor="Blue" Visible="False"></asp:Label>
            <br />
        </p>
        <br />
        <p>
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="18pt" Text="Terminate Employee:"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label16" runat="server" Text="Terminate Employee SNN: "></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="DeleteEmployeeSubmit0" runat="server" Text="Submit Termination" OnClick="DeleteEmployeeSubmit0_Click" />
            <br />
            <asp:Label ID="Label31" runat="server" Text="Invisible message" ForeColor="#FF5050" Visible="False"></asp:Label>
        </p>
        <br />
        <p>
        <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="18pt" Text="Search Employee(s):"></asp:Label>
            <br />
            <asp:Label ID="Label28" runat="server" Text="One or more entries required. No entries will give all employees." Font-Size="10pt" ForeColor="#FF5050"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label18" runat="server" Text="Employee Name: "></asp:Label>
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label59" runat="server" Text="Employee ID:"></asp:Label>
            <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label19" runat="server" Text="Employee SNN: "></asp:Label>
            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label20" runat="server" Text="Employee Supervisor SNN: "></asp:Label>
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label21" runat="server" Text="Employee Date of Birth: "></asp:Label>
            <asp:TextBox ID="TextBox15" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Label ID="Label22" runat="server" Text="Employee Gender: "></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                <asp:ListItem Value="NULL">Empty</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label23" runat="server" Text="Employee Wage: "></asp:Label>
            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
            <asp:Label ID="Label24" runat="server" Font-Size="10pt" Text="(Per hour). Min: 7.50"></asp:Label>
            <br />
            <asp:Label ID="Label25" runat="server" Text="Employee Job Title: "></asp:Label>
            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label26" runat="server" Text="Employee Location Num: "></asp:Label>
            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label27" runat="server" Text="Employee Employement Start: "></asp:Label>
            <asp:TextBox ID="TextBox19" runat="server" TextMode="Date"></asp:TextBox>
            &nbsp;-
            <asp:TextBox ID="TextBox21" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Label ID="Label33" runat="server" Text="Employee Employement End: "></asp:Label>
            <asp:TextBox ID="TextBox20" runat="server" TextMode="Date"></asp:TextBox>
            &nbsp;-
            <asp:TextBox ID="TextBox22" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Button ID="SearchEmployeeSubmit1" runat="server" Text="Search Employee(s)" OnClick="SearchEmployeeSubmit1_Click" />
            <br />
            <asp:Label ID="Label32" runat="server" Text="Invisible message" ForeColor="#FF5050" Visible="False"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="ID_num" HeaderText="ID Number" />
                    <asp:BoundField DataField="SSN" HeaderText="SSN" />
                    <asp:BoundField DataField="SuperSSN" HeaderText="Supervisor SNN" />
                    <asp:BoundField DataField="dateOfBirth" HeaderText="Date of Birth" DataFormatString="{0:MM/dd/yyyy}" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    <asp:BoundField DataField="wage" HeaderText="Wage (Per Hour)" />
                    <asp:BoundField DataField="job_Title" HeaderText="Job Title" />
                    <asp:BoundField DataField="location_Num" HeaderText="Location" />
                    <asp:BoundField DataField="start_employ" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" />
                    <asp:BoundField DataField="end_Employ" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </p>
        <br />
        <p>
        <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Size="18pt" Text="Update Employee(s):"></asp:Label>
            <br />
            <asp:Label ID="Label36" runat="server" Text="One of more entries required for both sides." Font-Size="10pt" ForeColor="#FF5050"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label37" runat="server" Text="Old Employee Name: "></asp:Label>
            <asp:TextBox ID="OldName" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label48" runat="server" Text="New Employee Name: "></asp:Label>
            <asp:TextBox ID="NewName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label60" runat="server" Text="Old Employee ID:"></asp:Label>
            <asp:TextBox ID="OldID" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label61" runat="server" Text="New Employee ID:"></asp:Label>
            <asp:TextBox ID="NewID" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label38" runat="server" Text="Old Employee SSN: "></asp:Label>
            <asp:TextBox ID="OldSSN" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label49" runat="server" Text="New Employee SSN: "></asp:Label>
            <asp:TextBox ID="NewSSN" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label39" runat="server" Text="Old Employee Supervisor SSN: "></asp:Label>
            <asp:TextBox ID="OldSupSSN" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label50" runat="server" Text="New Employee Supervisor SSN: "></asp:Label>
            <asp:TextBox ID="NewSupSSN" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label40" runat="server" Text="Old Employee Date of Birth: "></asp:Label>
            <asp:TextBox ID="OldDOB" runat="server" TextMode="Date"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label51" runat="server" Text="New Employee Date of Birth: "></asp:Label>
            <asp:TextBox ID="NewDOB" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Label ID="Label41" runat="server" Text="Old Employee Gender: "></asp:Label>
            <asp:DropDownList ID="OldGender" runat="server" Width="61px">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label52" runat="server" Text="New Employee Gender: "></asp:Label>
            <asp:DropDownList ID="NewGender" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label42" runat="server" Text="Old Employee Wage: "></asp:Label>
            <asp:TextBox ID="OldWage" runat="server"></asp:TextBox>
            <asp:Label ID="Label43" runat="server" Font-Size="10pt" Text="(Per hour). Min: 7.50"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label53" runat="server" Text="New Employee Wage: "></asp:Label>
            <asp:TextBox ID="NewWage" runat="server"></asp:TextBox>
            <asp:Label ID="Label54" runat="server" Font-Size="10pt" Text="(Per hour). Min: 7.50"></asp:Label>
            <br />
            <asp:Label ID="Label44" runat="server" Text="Old Employee Job Title: "></asp:Label>
            <asp:TextBox ID="OldJob" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label55" runat="server" Text="New Employee Job Title: "></asp:Label>
            <asp:TextBox ID="NewJob" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label45" runat="server" Text="Old Employee Location Number: "></asp:Label>
            <asp:TextBox ID="OldLoc" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label57" runat="server" Text="New Employee Location Number: "></asp:Label>
            <asp:TextBox ID="NewLoc" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label46" runat="server" Text="Old Employee Employement Start: "></asp:Label>
            <asp:TextBox ID="OldStart" runat="server" TextMode="Date"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label58" runat="server" Text="New Employee Employement Start: "></asp:Label>
            <asp:TextBox ID="NewStart" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Label ID="Label62" runat="server" Text="Old Employee Employement End: "></asp:Label>
            <asp:TextBox ID="OldEnd" runat="server" TextMode="Date"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label63" runat="server" Text="New Employee Employement End: "></asp:Label>
            <asp:TextBox ID="NewEnd" runat="server" TextMode="Date"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update Employee(s)" />
            <br />
            <asp:Label ID="Label47" runat="server" Text="Invisible message" ForeColor="#FF5050" Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
