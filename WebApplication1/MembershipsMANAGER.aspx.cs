using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing.Printing;
using System.Globalization;
using System.Security.Cryptography;
using System.Drawing.Drawing2D;
using System.Reflection.Emit;
using System.Diagnostics;

namespace WebApplication1
{
    public partial class MembershipsMANAGER : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmitAddMember_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                string Fname = InputMemberFname.Text;
                string Lname = InputMemberLname.Text;
                int Price = 0;

                if (InputMemberType.SelectedIndex == 0)
                {
                    Price = 40;
                }
                else if (InputMemberType.SelectedIndex == 1)
                {
                    Price = 70;
                }



                SqlCommand addMember = new SqlCommand("museumSchema.AddNewMember");
                museumConn.Open();
                addMember.Connection = museumConn;
                addMember.CommandType = System.Data.CommandType.StoredProcedure;

                addMember.Parameters.AddWithValue("@NewMemberName", Fname + " " + Lname);
                addMember.Parameters.AddWithValue("@MemberPrice", Price);


                addMember.ExecuteNonQuery();

                SqlConnection museumConn2 = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                SqlCommand read = new SqlCommand("SELECT membership_ID FROM museumSchema.Members WHERE memberName = '" + (Fname + " " + Lname) + "'");
                museumConn2.Open();
                read.Connection = museumConn2;
                SqlDataReader ID = read.ExecuteReader();
                string newMemberID = "";
                while (ID.Read())
                {
                    newMemberID += ID["membership_ID"].ToString();
                }

                LabelNewMemberMessage.Visible = true;
                LabelNewMemberMessage.Text = "Subscription Successful. New ID is: ";
                LabelNewMemberID.Visible = true; //making label visible
                LabelNewMemberID.Text = newMemberID.ToString();
            }
        }
        protected void ButtonSubmitRemoval_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string Fname0 = InputDeleteMemberFname.Text;
                string Lname0 = InputDeleteMemberLname.Text;
                string memberID = InputDeleteMemberID.Text;

                SqlCommand deleteMember = new SqlCommand("museumSchema.DeleteMember");
                museumConn.Open();
                deleteMember.Connection = museumConn;
                deleteMember.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter("@MemberName", Fname0 + " " + Lname0);
                SqlParameter param2 = new SqlParameter("@MemberID", memberID);

                deleteMember.Parameters.Add(param);
                deleteMember.Parameters.Add(param2);

                deleteMember.ExecuteNonQuery();

                LabelRemoveMemberMessage.Visible = true;
                LabelRemoveMemberMessage.Text = "Member successfully removed.";
            }
        }

        protected void ButtonSubmitMemberSearch_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variables from inputs
                string searchMemberFname = SearchMemberFname.Text;
                string searchMemberLname = SearchMemberLname.Text;
                string searchMemberID = SearchMemberID.Text;
                int Price = 0;
                if (SearchMemberType.SelectedIndex == 0)
                {
                    Price = 40;
                }
                else if (SearchMemberType.SelectedIndex == 1)
                {
                    Price = 70;
                }
                string searchMemberStart1 = SearchMemberStart1.Text;
                string searchMemberStart2 = SearchMemberStart2.Text;
                string searchMemberEnd1 = SearchMemberEnd1.Text;
                string searchMemberEnd2 = SearchMemberEnd2.Text;


                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.CheckIfMemberMGR");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                if (searchMemberFname.Trim() + " " + searchMemberLname.Trim() != " ")
                    com.Parameters.AddWithValue("@SearchMembername", searchMemberFname.Trim() + " " + searchMemberLname.Trim());
                if (searchMemberID.Trim() != "")
                    com.Parameters.AddWithValue("@SearchMemberID", searchMemberID);
                com.Parameters.AddWithValue("@SearchPrice", Price);
                if (searchMemberStart1.Trim() != "")
                    com.Parameters.AddWithValue("@SearchMemberStart1", searchMemberStart1);
                if (searchMemberStart2.Trim() != "")
                    com.Parameters.AddWithValue("@SearchMemberStart2", searchMemberStart2);
                if (searchMemberEnd1.Trim() != "")
                    com.Parameters.AddWithValue("@SearchMemberEnd1", searchMemberEnd1);
                if (searchMemberEnd2.Trim() != "")
                    com.Parameters.AddWithValue("@SearchMemberEnd2", searchMemberEnd2);

                // Executing Stored Procedure
                SqlDataReader rdr = com.ExecuteReader();

                // Making label visible
                LabelMemberSearchMessage.Visible = true; //making label visible
                LabelMemberSearchMessage.Text = "Search successful.";

                // Putting results to gridview
                GridView1.DataSource = rdr;
                GridView1.DataBind();
            }
        }

        protected void ButtonUpdateMember_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variables from inputs
                string oldMemberFname = InputOldMemberFname.Text;
                string oldMemberLname = InputOldMemberLname.Text;
                string oldMemberID = InputOldMemberID.Text;
                int oldPrice = 0;
                if (InputOldMemberType.SelectedIndex == 0)
                {
                    oldPrice = 40;
                }
                else if (InputOldMemberType.SelectedIndex == 1)
                {
                    oldPrice = 70;
                }
                string oldMemberStart = InputOldStart.Text;
                string oldMemberEnd = InputOldExpiration.Text;
                string newMemberFname = InputUpdateFname.Text;
                string newMemberLname = InputUpdateLname.Text;
                string newMemberID = InputUpdateMemberID.Text;
                int newPrice = 0;
                if (InputUpdateMemberType.SelectedIndex == 0)
                {
                    newPrice = 40;
                }
                else if (InputUpdateMemberType.SelectedIndex == 1)
                {
                    newPrice = 70;
                }
                string newMemberStart = InputNewStart.Text;
                string newMemberEnd = InputUpdateExpiration.Text;

                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.ModifyMembers");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                if (oldMemberFname.Trim() + " " + oldMemberLname.Trim() != " ")
                    com.Parameters.AddWithValue("@oldMemberName", oldMemberFname + " " + oldMemberLname);
                if (oldMemberID.Trim() != "")
                    com.Parameters.AddWithValue("@oldMemberID", oldMemberID);
                com.Parameters.AddWithValue("@oldMemberPrice", oldPrice);
                if (oldMemberStart.Trim() != "")
                    com.Parameters.AddWithValue("@oldMemberStart", oldMemberStart);
                if (oldMemberEnd.Trim() != "")
                    com.Parameters.AddWithValue("@oldMemberEnd", oldMemberEnd);
                if (newMemberFname.Trim() + " " + newMemberLname.Trim() != " ")
                    com.Parameters.AddWithValue("@newMemberName", newMemberFname + " " + newMemberLname);
                if (newMemberID.Trim() != "")
                    com.Parameters.AddWithValue("@newMemberID", newMemberID);
                com.Parameters.AddWithValue("@newMemberPrice", newPrice);
                if (newMemberStart.Trim() != "")
                    com.Parameters.AddWithValue("@newMemberStart", newMemberStart);
                if (newMemberEnd.Trim() != "")
                    com.Parameters.AddWithValue("@newMemberEnd", newMemberEnd);

                // Executing Stored Procedure
                com.ExecuteNonQuery();

                // Making label visible
                LabelUpdateMemberMessage.Visible = true; //making label visible
                LabelUpdateMemberMessage.Text = "Update successful.";
            }
        }

        protected void ButtonLocations_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/Locations.aspx");
        }

        protected void ButtonEmployees_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/EmployeesMANAGER.aspx");
        }

        protected void ButtonMemberships_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/MembershipsMANAGER.aspx");
        }

        protected void ButtonDonate_Click1(object sender, EventArgs e)
        {
           
        }

        protected void ButtonFilms_Click1(object sender, EventArgs e)
        {

        }

        protected void ButtonExhibitions_Click1(object sender, EventArgs e)
        {

        }

        protected void ButtonCollections_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/Collections.aspx");
        }

        protected void ButtonHome_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/HomePageMANAGER.aspx");
        }

        protected void ButtonLogIn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/SignInPage.aspx");
        }

        protected void InputMemberFName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputMemberType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void InputMemberFname_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void InputMemberLname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputDeleteMemberFname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputDeleteMemberLname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputDeleteMemberID_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SearchMemberFname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SearchMemberLname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SearchMemberID_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SearchMemberStart1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SearchMemberStart2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SearchMemberEnd1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SearchMemberEnd2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputOldMemberFname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputUpdateFname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputOldMemberLname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputUpdateLname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputOldMemberID_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputUpdateMemberID_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputOldStart_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputNewStart_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputOldExpiration_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputUpdateExpiration_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}

