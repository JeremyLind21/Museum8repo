using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Location : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Insertion_Button_Click(object sender, EventArgs e)
        {
            //Response.Redirect("https://museuminterface.azurewebsites.net/CustomerHomePage.aspx");
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                //String represntation of inputs
                string newLocationName = TextBox1.Text;
                string newBuildingName = TextBox2.Text;
                string newBuildingNum = TextBox3.Text;
                string newLocationNum = TextBox4.Text;
                string newHours = TextBox5.Text;
                string newManagerName = TextBox6.Text;
                string newManagerSSN = TextBox7.Text;
                string newDiningChoice = TextBox8.Text;

                //'com' is the Command Stored Procedure
                SqlCommand com = new SqlCommand("museumSchema.CreateNewCollection");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                //Creating Parameters for Adding to Database
                SqlParameter param1 = new SqlParameter("@NewLocationName", newLocationName);
                SqlParameter param2 = new SqlParameter("@NewBuildingName", newBuildingName);
                SqlParameter param3 = new SqlParameter("@NewBuildingNum", newBuildingNum);
                SqlParameter param4 = new SqlParameter("@NewLocationNum", newLocationNum);
                SqlParameter param5 = new SqlParameter("@NewHours", newHours);
                SqlParameter param6 = new SqlParameter("@NewManagerName", newManagerName);
                SqlParameter param7 = new SqlParameter("@NewManagerSSN", newManagerSSN);
                SqlParameter param8 = new SqlParameter("@NewDiningChoice", newDiningChoice);

                //Connecting Parameters to Stored Procedure
                com.Parameters.Add(param1);
                com.Parameters.Add(param2);
                com.Parameters.Add(param3);
                com.Parameters.Add(param4);
                com.Parameters.Add(param5);
                com.Parameters.Add(param6);
                com.Parameters.Add(param7);
                com.Parameters.Add(param8);

                com.ExecuteNonQuery(); //executing the Stored Procedure 'INSERT' command
                //here if SQL command doesn't work it should bring you to an error page
                //Label12.Visible = true; //making label visible
                //Label12.Text = "New Collection Submission Successful"; //making label saying successful
            }
        }
        protected void Deletion_Button_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                string deleteBuildingNum = TextBox9.Text;
                string deleteLocationNum = TextBox10.Text;
                SqlCommand com = new SqlCommand("museumSchema.DeleteLocation");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter param1 = new SqlParameter("@DeleteLocationName", deleteBuildingNum);
                SqlParameter param2 = new SqlParameter("@DeleteLocationName", deleteLocationNum);

                com.Parameters.Add(param1);
                com.Parameters.Add(param2);

                com.ExecuteNonQuery(); //executing the Stored Procedure 'DELETE FROM' command
                //here if SQL command doesn't work it should bring you to an error page
                //Label15.Visible = true; //making label visible
                //Label15.Text = "Delete Collection Submission Successful"; //making label saying successful
            }
        }

        protected void Modify_Button_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string oldLocationName = TextBox11.Text;
                string oldBuildingName = TextBox13.Text;
                string oldBuildingNum = TextBox15.Text;
                string oldLocationNum = TextBox17.Text;
                string oldHours = TextBox19.Text;
                string oldManagerName = TextBox21.Text;
                string oldManagerSSN = TextBox23.Text;
                string oldDiningChoice = TextBox25.Text;
                string newLocationName = TextBox12.Text;
                string newBuildingName = TextBox14.Text;
                string newBuildingNum = TextBox16.Text;
                string newLocationNum = TextBox18.Text;
                string newHours = TextBox20.Text;
                string newManagerName = TextBox22.Text;
                string newManagerSSN = TextBox24.Text;
                string newDiningChoice = TextBox26.Text;

                SqlCommand com = new SqlCommand("museumSchema.ModifyLocation");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                if (oldLocationName.Trim() != "")
                {
                    SqlParameter param1 = new SqlParameter("@OldLocationName", oldLocationName);
                    com.Parameters.Add(param1);

                }
                if (oldBuildingName.Trim() != "")
                {
                    SqlParameter param2 = new SqlParameter("@OldBuildingName", oldBuildingName);
                    com.Parameters.Add(param2);
                }
                if (oldBuildingNum.Trim() != "")
                {
                    SqlParameter param3 = new SqlParameter("@OldBuildingNum", oldBuildingNum);
                    com.Parameters.Add(param3);
                }
                if (oldLocationNum.Trim() != "")
                {
                    SqlParameter param4 = new SqlParameter("@OldLocationNum", oldLocationNum);
                    com.Parameters.Add(param4);
                }
                if (oldHours.Trim() != "")
                {
                    SqlParameter param5 = new SqlParameter("@OldHours", oldHours);
                    com.Parameters.Add(param5);
                }
                if (oldManagerName.Trim() != "")
                {
                    SqlParameter param6 = new SqlParameter("@OldManagerName", oldManagerName);
                    com.Parameters.Add(param6);
                }
                if (oldManagerSSN.Trim() != "")
                {
                    SqlParameter param7 = new SqlParameter("@OldManagerSSN", oldManagerSSN);
                    com.Parameters.Add(param7);
                }
                if (oldDiningChoice.Trim() != "")
                {
                    SqlParameter param8 = new SqlParameter("@OldDiningChoice", oldDiningChoice);
                    com.Parameters.Add(param8);
                }
                if (newLocationName.Trim() != "")
                {
                    SqlParameter param9 = new SqlParameter("@NewLocationName", newLocationName);
                    com.Parameters.Add(param9);

                }
                if (newBuildingName.Trim() != "")
                {
                    SqlParameter param10 = new SqlParameter("@NewBuildingName", newBuildingName);
                    com.Parameters.Add(param10);
                }
                if (newBuildingNum.Trim() != "")
                {
                    SqlParameter param11 = new SqlParameter("@NewBuildingNum", newBuildingNum);
                    com.Parameters.Add(param11);
                }
                if (newLocationNum.Trim() != "")
                {
                    SqlParameter param12 = new SqlParameter("@NewLocationNum", newLocationNum);
                    com.Parameters.Add(param12);
                }
                if (newHours.Trim() != "")
                {
                    SqlParameter param13 = new SqlParameter("@NewHours", newHours);
                    com.Parameters.Add(param13);
                }
                if (newManagerName.Trim() != "")
                {
                    SqlParameter param14 = new SqlParameter("@NewManagerName", newManagerName);
                    com.Parameters.Add(param14);
                }
                if (newManagerSSN.Trim() != "")
                {
                    SqlParameter param15 = new SqlParameter("@NewManagerSSN", newManagerSSN);
                    com.Parameters.Add(param15);
                }
                if (newDiningChoice.Trim() != "")
                {
                    SqlParameter param16 = new SqlParameter("@NewDiningChoice", newDiningChoice);
                    com.Parameters.Add(param16);
                }

                com.ExecuteNonQuery(); //executing the Stored Procedure 'UPDATE' command
                //here if SQL command doesn't work it should bring you to an error page
                //Label23.Visible = true; //making label visible
                //Label23.Text = "Modify Collection Submission Successful"; //making label saying successful
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Search Button
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
                //Label16.Visible = true; //making label visible
                //Label16.Text = "New Collection Submission Successful (If no table then no results)"; //making label saying successful
                //GridView2.DataSource = rdr;
                //GridView2.DataBind();
                //GridView3.DataSource = rdr;
                //GridView3.DataBind();
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

