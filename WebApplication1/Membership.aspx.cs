using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Memberships : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonHome_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/HomePage.aspx");
        }

        protected void ButtonLogIn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/SignInPage.aspx");
        }

        protected void ButtonSubmitSignUp_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                string Fname = InputFname.Text;
                string Lname = InputLname.Text;
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

                LabelSignUpSubmit.Visible = true;
                LabelSignUpSubmit.Text = "Subscription Successful. Your ID is: ";
                LabelNewMemberID.Visible = true; //making label visible
                LabelNewMemberID.Text = newMemberID.ToString();
            }
        }

        protected void ButtonCollections_Click1(object sender, EventArgs e)
        {

        }

        protected void ButtonExhibitions_Click1(object sender, EventArgs e)
        {

        }

        protected void ButtonFilms_Click1(object sender, EventArgs e)
        {

        }

        protected void ButtonMemberships_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/Memberships.aspx");
        }

        protected void ButtonDonate_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/Donations.aspx");
        }

        protected void InputMemberType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void InputFname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputLname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonMemberCheckRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/MembershipsRedirect.aspx");
        }
    }
}

