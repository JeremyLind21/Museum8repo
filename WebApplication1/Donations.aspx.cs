using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Donations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonLogIn_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("https://museuminterface.azurewebsites.net/SignInPage.aspx");
            Response.Redirect("https://localhost:44328/SignInPage");
        }
        protected void ButtonDonate100_Click(object sender, EventArgs e)
        {
            LabelDonationAmount.Text = "$100";
        }

        protected void ButtonDonate50_Click(object sender, EventArgs e)
        {
            LabelDonationAmount.Text = "$50";
        }

        protected void ButtonDonate20_Click(object sender, EventArgs e)
        {
            LabelDonationAmount.Text = "$20";
        }

        protected void ButtonDonate10_Click(object sender, EventArgs e)
        {
            LabelDonationAmount.Text = "$10";
        }

        protected void ButtonDonate5_Click(object sender, EventArgs e)
        {
            LabelDonationAmount.Text = "$5";
        }
        protected void ButtonDonateSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                string Fname = InputFname.Text;
                string Lname = InputLname.Text;
                string Donation = LabelDonationAmount.Text;
                int DonatAmt = 0;

                if (LabelDonationAmount.Text == "$100")
                {
                    DonatAmt = 100;
                }
                else if (LabelDonationAmount.Text == "$50")
                {
                    DonatAmt = 50;
                }
                else if (LabelDonationAmount.Text == "$20")
                {
                    DonatAmt = 20;
                }
                else if (LabelDonationAmount.Text == "$10")
                {
                    DonatAmt = 10;
                }
                else if (LabelDonationAmount.Text == "$5")
                {
                    DonatAmt = 5;
                }

                SqlCommand newDonation = new SqlCommand("museumSchema.InsertDonations");
                museumConn.Open();
                newDonation.Connection = museumConn;
                newDonation.CommandType = System.Data.CommandType.StoredProcedure;

                SqlParameter param = new SqlParameter("@NewDonorName", Fname + " " + Lname);
                SqlParameter param2 = new SqlParameter("@DonationAmount", DonatAmt);

                newDonation.Parameters.Add(param);
                newDonation.Parameters.Add(param2);

                newDonation.ExecuteNonQuery();
            }

        }

        protected void InputFname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void InputLname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonHome_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("https://museuminterface.azurewebsites.net/HomePage.aspx");
            Response.Redirect("https://localhost:44328/HomePage");
        }

        protected void ButtonCollections_Click1(object sender, EventArgs e)
        {

        }

        protected void ButtonMemberships_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("https://museuminterface.azurewebsites.net/Memberships.aspx");
            Response.Redirect("https://localhost:44328/Memberships");
        }

        protected void ButtonDonate_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("https://museuminterface.azurewebsites.net/Donate.aspx");
            Response.Redirect("https://localhost:44328/Donate");
        }

        protected void ButtonExhibitions_Click1(object sender, EventArgs e)
        {

        }

        protected void ButtonFilms_Click1(object sender, EventArgs e)
        {

        }
    }
}

