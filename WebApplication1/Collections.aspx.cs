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
    public partial class Collections : System.Web.UI.Page
    {
        protected void InsertSubmitButton_Click(object sender, EventArgs e) //INSERT NEW COLLECTION SUBMIT BUTTON
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string newCollectionName = TextBox1.Text;  //making NewCollectionName the name input
                string newCollectionAuthor = TextBox2.Text; //making NewCollectionName the Author input
                string newCollectionLocation = TextBox3.Text; //making NewCollectionName the Location input
                SqlCommand com = new SqlCommand("museumSchema.CreateNewCollection");  //making 'com' the command Stored Procedure I made in SSMS
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter("@NewCollectionName", newCollectionName);  //making 'param' the Name parameters
                SqlParameter param2 = new SqlParameter("@NewCollectionAuthor", newCollectionAuthor); //making 'param2' the Name parameters
                SqlParameter param3 = new SqlParameter("@NewCollectionLocation", newCollectionLocation); //making 'param3' the Name parameters

                com.Parameters.Add(param); //connecting parameteres to Stored Procedure command in SSMS
                com.Parameters.Add(param2); //connecting parameteres to Stored Procedure command in SSMS
                com.Parameters.Add(param3); //connecting parameteres to Stored Procedure command in SSMS

                com.ExecuteNonQuery(); //executing the Stored Procedure 'INSERT' command
                //here if SQL command doesn't work it should bring you to an error page
                Label12.Visible = true; //making label visible
                Label12.Text = "New Collection Submission Successful"; //making label saying successful
            }
        }
        protected void DeleteSubmitButton_Click(object sender, EventArgs e) //DELETE COLLECTION SUBMIT BUTTON
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string deleteCollectionName = TextBox4.Text;  //making deleteCollectionName the name input
                SqlCommand com = new SqlCommand("museumSchema.DeleteCollection");  //making 'com' the command Stored Procedure I made in SSMS
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter("@DeleteCollectionName", deleteCollectionName);  //making 'param' the Name parameter

                com.Parameters.Add(param); //connecting parameter to Stored Procedure command in SSMS

                com.ExecuteNonQuery(); //executing the Stored Procedure 'DELETE FROM' command
                //here if SQL command doesn't work it should bring you to an error page
                Label15.Visible = true; //making label visible
                Label15.Text = "Delete Collection Submission Successful"; //making label saying successful
            }
        }

        protected void SearchSubmitButton_Click(object sender, EventArgs e) // SEARCH COLLECTION SUBMIT BUTTON
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string searchCollectionName = TextBox5.Text;  //making SearchCollectionName the Name input
                string searchCollectionAuthor = TextBox6.Text; //making SearchCollectionName the Author input
                string searchCollectionLocation = TextBox7.Text; //making SearchCollectionName the Location input
                SqlCommand com = new SqlCommand("museumSchema.SearchCollection");  //making 'com' the command Stored Procedure I made in SSMS
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                if (searchCollectionName.Trim() != "")
                {
                    SqlParameter param = new SqlParameter("@SearchCollectionName", searchCollectionName);  //making 'param' the Name parameters
                    com.Parameters.Add(param); //connecting parameteres to Stored Procedure command in SSMS

                }
                if (searchCollectionAuthor.Trim() != "")
                {
                    SqlParameter param2 = new SqlParameter("@SearchCollectionAuthor", searchCollectionAuthor); //making 'param2' the Name parameters
                    com.Parameters.Add(param2); //connecting parameteres to Stored Procedure command in SSMS
                }
                if (searchCollectionLocation.Trim() != "")
                {
                    SqlParameter param3 = new SqlParameter("@SearchCollectionLocation", searchCollectionLocation); //making 'param3' the Name parameters
                    com.Parameters.Add(param3); //connecting parameteres to Stored Procedure command in SSMS
                }

                SqlDataReader rdr = com.ExecuteReader(); //executing the Stored Procedure 'SELECT' command
                //here if SQL command doesn't work it should bring you to an error page
                Label16.Visible = true; //making label visible
                Label16.Text = "New Collection Submission Successful (If no table then no results)"; //making label saying successful
                GridView1.DataSource = rdr;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ModifySubmitButton_Click(object sender, EventArgs e) // UPDATE COLLECTION SUBMIT BUTTON
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string oldCollectionName = TextBox8.Text;  //making oldCollectionName the old Name input
                string oldCollectionAuthor = TextBox9.Text; //making oldCollectionName the old Author input
                string oldCollectionLocation = TextBox10.Text; //making oldCollectionName the old Location input
                string newCollectionName = TextBox11.Text;  //making newCollectionName the new Name input
                string newCollectionAuthor = TextBox12.Text; //making newCollectionName the new Author input
                string newCollectionLocation = TextBox13.Text; //making newCollectionName the new Location input
                SqlCommand com = new SqlCommand("museumSchema.ModifyCollection");  //making 'com' the command Stored Procedure I made in SSMS
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                if (oldCollectionName.Trim() != "")
                {
                    SqlParameter param = new SqlParameter("@OldCollectionName", oldCollectionName);  //making 'param' the Name parameters
                    com.Parameters.Add(param); //connecting parameteres to Stored Procedure command in SSMS

                }
                if (oldCollectionAuthor.Trim() != "")
                {
                    SqlParameter param2 = new SqlParameter("@OldCollectionAuthor", oldCollectionAuthor); //making 'param2' the Name parameters
                    com.Parameters.Add(param2); //connecting parameteres to Stored Procedure command in SSMS
                }
                if (oldCollectionLocation.Trim() != "")
                {
                    SqlParameter param3 = new SqlParameter("@OldCollectionLocation", oldCollectionLocation); //making 'param3' the Name parameters
                    com.Parameters.Add(param3); //connecting parameteres to Stored Procedure command in SSMS
                }
                if (newCollectionName.Trim() != "")
                {
                    SqlParameter param4 = new SqlParameter("@NewCollectionName", newCollectionName);  //making 'param4' the Name parameters
                    com.Parameters.Add(param4); //connecting parameteres to Stored Procedure command in SSMS

                }
                if (newCollectionAuthor.Trim() != "")
                {
                    SqlParameter param5 = new SqlParameter("@NewCollectionAuthor", newCollectionAuthor); //making 'param5' the Name parameters
                    com.Parameters.Add(param5); //connecting parameteres to Stored Procedure command in SSMS
                }
                if (newCollectionLocation.Trim() != "")
                {
                    SqlParameter param6 = new SqlParameter("@NewCollectionLocation", newCollectionLocation); //making 'param6' the Name parameters
                    com.Parameters.Add(param6); //connecting parameteres to Stored Procedure command in SSMS
                }

                com.ExecuteNonQuery(); //executing the Stored Procedure 'UPDATE' command
                //here if SQL command doesn't work it should bring you to an error page
                Label23.Visible = true; //making label visible
                Label23.Text = "Modify Collection Submission Successful"; //making label saying successful
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}