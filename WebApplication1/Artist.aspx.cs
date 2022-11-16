using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing.Printing;

namespace WebApplication1
{
    public partial class Artist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string newArtistName = TextBox1.Text;  //making NewArtistName the name input
                string newArtistDOB = TextBox2.Text; //making NewArtistDOB the DOB input
                string newArtistDOD = TextBox3.Text; //making NewArtistDOD the DOD input
                string newArtistID = TextBox4.Text; //making NewArtistID the ID input

                SqlCommand com = new SqlCommand("museumSchema.InsertArtist");  //making 'com' the command Stored Procedure I made in SSMS
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter("@ArtistName", newArtistName);  //making 'param' the Name parameters
                SqlParameter param2 = new SqlParameter("@ArtistDOB", newArtistDOB); //making 'param2' the Name parameters
                SqlParameter param3 = new SqlParameter("@ArtistDOD", newArtistDOD); //making 'param3' the Name parameters
                SqlParameter param4 = new SqlParameter("@ArtistID", newArtistID); //making 'param4' the Name parameters

                com.Parameters.Add(param); //connecting parameteres to Stored Procedure command in SSMS
                com.Parameters.Add(param2); //connecting parameteres to Stored Procedure command in SSMS
                com.Parameters.Add(param3); //connecting parameteres to Stored Procedure command in SSMS
                com.Parameters.Add(param4); //connecting parameteres to Stored Procedure command in SSMS

                com.ExecuteNonQuery(); //executing the Stored Procedure 'INSERT' command
                //here if SQL command doesn't work it should bring you to an error page
                Label6.Visible = true; //making label visible
                Label6.Text = "New Artist Submission Successful"; //making label saying successful
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string deleteArtist = TextBox5.Text;  //making deleteArtist the ID input
                SqlCommand com = new SqlCommand("museumSchema.DeleteArtist");  //making 'com' the command Stored Procedure I made in SSMS
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter("@DeleteArtistID", deleteArtist);  //making 'param' the Name parameter

                com.Parameters.Add(param); //connecting parameter to Stored Procedure command in SSMS

                com.ExecuteNonQuery(); //executing the Stored Procedure 'DELETE FROM' command
                //here if SQL command doesn't work it should bring you to an error page
                Label9.Visible = true; //making label visible
                Label9.Text = "Delete Artist Submission Successful"; //making label saying successful
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string searchArtistID = TextBox6.Text;  //making SearchArtistName the Name input

                SqlCommand com = new SqlCommand("museumSchema.SearchArtist");  //making 'com' the command Stored Procedure I made in SSMS
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                if (searchArtistID.Trim() != "")
                {
                    SqlParameter param = new SqlParameter("@SearchArtistName", searchArtistID);  //making 'param' the Name parameters
                    com.Parameters.Add(param); //connecting parameteres to Stored Procedure command in SSMS

                }
                if (searchArtistID.Trim() != "")
                {
                    SqlParameter param2 = new SqlParameter("@SearchArtistDOB", searchArtistID); //making 'param2' the Name parameters
                    com.Parameters.Add(param2); //connecting parameteres to Stored Procedure command in SSMS
                }
                if (searchArtistID.Trim() != "")
                {
                    SqlParameter param3 = new SqlParameter("@SearchArtistDOD", searchArtistID); //making 'param3' the Name parameters
                    com.Parameters.Add(param3); //connecting parameteres to Stored Procedure command in SSMS
                }

                SqlDataReader rdr = com.ExecuteReader(); //executing the Stored Procedure 'SELECT' command
                //here if SQL command doesn't work it should bring you to an error page
                Label16.Visible = true; //making label visible
                Label16.Text = "Submission Successful (If no table then no results)"; //making label saying successful
                GridView1.DataSource = rdr;
                GridView1.DataBind();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string oldArtistName = TextBox7.Text;  //making oldArtistName the old Name input
                string oldArtistDOB = TextBox8.Text; //making oldArtistDOB the old DOB input
                string oldArtistDOD = TextBox9.Text; //making oldArtistDOD the old DOD input
                string newArtistName = TextBox10.Text;  //making newArtistName the new Name input
                string newArtistDOB = TextBox11.Text; //making newArtistDOB the new DOB input
                string newArtistDOD = TextBox12.Text; //making newArtistDOD the new DOD input
                SqlCommand com = new SqlCommand("museumSchema.ModifyArtist");  //making 'com' the command Stored Procedure I made in SSMS
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                if (oldArtistName.Trim() != "")
                {
                    SqlParameter param = new SqlParameter("@OldArtistName", oldArtistName);  //making 'param' the Name parameters
                    com.Parameters.Add(param); //connecting parameteres to Stored Procedure command in SSMS

                }
                if (oldArtistDOB.Trim() != "")
                {
                    SqlParameter param2 = new SqlParameter("@OldArtistDOB", oldArtistDOB); //making 'param2' the Name parameters
                    com.Parameters.Add(param2); //connecting parameteres to Stored Procedure command in SSMS
                }
                if (oldArtistDOD.Trim() != "")
                {
                    SqlParameter param3 = new SqlParameter("@OldArtistDOD", oldArtistDOD); //making 'param3' the Name parameters
                    com.Parameters.Add(param3); //connecting parameteres to Stored Procedure command in SSMS
                }
                if (newArtistName.Trim() != "")
                {
                    SqlParameter param4 = new SqlParameter("@NewArtistName", newArtistName);  //making 'param4' the Name parameters
                    com.Parameters.Add(param4); //connecting parameteres to Stored Procedure command in SSMS

                }
                if (newArtistDOB.Trim() != "")
                {
                    SqlParameter param5 = new SqlParameter("@NewArtistDOB", newArtistDOB); //making 'param5' the Name parameters
                    com.Parameters.Add(param5); //connecting parameteres to Stored Procedure command in SSMS
                }
                if (newArtistDOD.Trim() != "")
                {
                    SqlParameter param6 = new SqlParameter("@NewArtistDOD", newArtistDOD); //making 'param6' the Name parameters
                    com.Parameters.Add(param6); //connecting parameteres to Stored Procedure command in SSMS
                }

                SqlDataReader rdr = com.ExecuteReader(); //executing the Stored Procedure 'UPDATE' command
                                       //here if SQL command doesn't work it should bring you to an error page
                GridView1.DataSource = rdr;
                GridView1.DataBind();
                Label21.Visible = true; //making label visible
                Label21.Text = "Modify Collection Submission Successful"; //making label saying successful
            }
        }
    }
}

