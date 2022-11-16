using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SignInPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignIn_Click1(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                string userName = InputUsername.Text;
                string password = InputPassword.Text;
                SqlDataReader db;
                SqlCommand verify = new SqlCommand("museumSchema.VerifyCredentialsExist");
                museumConn.Open();
                verify.Connection = museumConn;
                verify.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter("@UsernameAtt", userName);
                SqlParameter param2 = new SqlParameter("@PasswordAtt", password);
                SqlParameter param3 = new SqlParameter("@authLevel", 1);

                verify.Parameters.Add(param);
                verify.Parameters.Add(param2);
                verify.Parameters.Add(param3);

                verify.Parameters["@UsernameAtt"].Value = userName;
                verify.Parameters["@PasswordAtt"].Value = password;
                verify.Parameters["@authLevel"].Value = 1;

                db = verify.ExecuteReader();

                if (db.Read())
                {
                    Response.Redirect("https://museuminterface.azurewebsites.net/HomePage.aspx");
                }

                {
                    db.Close();
                    verify.Parameters["@authLevel"].Value = 2;
                    db = verify.ExecuteReader();
                    if (db.Read())
                    {
                        Response.Redirect("https://museuminterface.azurewebsites.net/ManagerHomePage.aspx");
                    }
                }

            }
        }

        protected void ButtonCreateAcc_Click1(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                string Fname = InputFname.Text;
                string Lname = InputLname.Text;
                string UsernameC = InputUsernameReg.Text;
                string PasswordC = InputPasswordReg.Text;
                SqlParameter param = new SqlParameter("@newUsername", UsernameC);
                SqlParameter param2 = new SqlParameter("@newPassword", PasswordC);
                SqlParameter param3 = new SqlParameter("@newUser_Name", Fname + " " + Lname);
                SqlCommand create = new SqlCommand("museumSchema.CreateNewCustomerLoginAccount");
                museumConn.Open();

                create.Parameters.Add(param);
                create.Parameters.Add(param2);
                create.Parameters.Add(param3);
                create.Connection = museumConn;
                create.CommandType = System.Data.CommandType.StoredProcedure;

                create.ExecuteNonQuery();
                LabelAccCreated.Visible = true; //making label visible
                LabelAccCreated.Text = "New Customer Account Creation Successful"; //making label saying successful


            }
        }

        protected void ButtonLogIn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/SignInPage.aspx");
        }

        protected void ButtonHome_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/HomePage.aspx");
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

        protected void InputUsername_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputUsernameReg_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputLname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputFname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputPasswordReg_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

