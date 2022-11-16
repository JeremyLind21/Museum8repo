using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class MembershipsRedirect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSearchMembership_Click1(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string Fname1 = InputFname.Text;
                string Lname1 = InputLname.Text;
                string MemberID = InputMemberID.Text;

                SqlCommand checkMembership = new SqlCommand("museumSchema.CheckIfMember");
                museumConn.Open();
                checkMembership.Connection = museumConn;
                checkMembership.CommandType = System.Data.CommandType.StoredProcedure;

                if (Fname1 + Lname1.Trim() != "")
                {
                    SqlParameter param = new SqlParameter("@SearchMemberName", Fname1 + " " + Lname1);
                    SqlParameter param2 = new SqlParameter("@SearchMemberID", MemberID);
                    checkMembership.Parameters.Add(param);
                    checkMembership.Parameters.Add(param2);

                }

                SqlDataReader rdr = checkMembership.ExecuteReader();
                LabelCheckMembership.Visible = true;
                LabelCheckMembership.Text = "Membership Search Successful (If no table then no results)";
                GridView1.DataSource = rdr;
                GridView1.DataBind();
            }
        }

        protected void ButtonLogIn_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("https://museuminterface.azurewebsites.net/SignInPage.aspx");
            Response.Redirect("https://localhost:44328/SignInPage");
        }

        protected void ButtonHome_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/HomePage.aspx");
        }

        protected void ButtonMemberships_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/Memberships.aspx");
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

        protected void ButtonDonate_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/Donations.aspx");
        }

        protected void InputFname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputLname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void InputFname0_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputLname0_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonUnsubscribe_Click1(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string Fname0 = InputFname0.Text;
                string Lname0 = InputLname0.Text;
                string MemberID0 = InputMemberID0.Text;

                SqlCommand deleteMember = new SqlCommand("museumSchema.DeleteMember");
                museumConn.Open();
                deleteMember.Connection = museumConn;
                deleteMember.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter("@MemberName", Fname0 + " " + Lname0);
                SqlParameter param2 = new SqlParameter("@MemberID", MemberID0);

                deleteMember.Parameters.Add(param);
                deleteMember.Parameters.Add(param2);

                deleteMember.ExecuteNonQuery();

                if (Fname0 != "" && Lname0 != "" && MemberID0 != "")
                {
                    LabelUnsubSubmit.Visible = true;
                    LabelUnsubSubmit.Text = "Unsubcription Successful";
                }
                else
                {
                    LabelUnsubSubmit.Visible = true;
                    LabelUnsubSubmit.Text = "One or more fields missing.";
                }
            }
        }
    }
}

