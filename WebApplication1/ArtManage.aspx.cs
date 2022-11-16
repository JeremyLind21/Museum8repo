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

namespace WebApplication1
{
    public partial class Art : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variables from inputs
                string newName = TextBox1.Text;
                string newDOC = TextBox3.Text;
                string newArtist = TextBox4.Text;
                string newLocation = TextBox5.Text;
                string newExhibition = TextBox6.Text;
                string newCollection = TextBox7.Text;

                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.CreateNewArt");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                com.Parameters.AddWithValue("@newName", newName);
                com.Parameters.AddWithValue("@newDOC", newDOC);
                com.Parameters.AddWithValue("@newArtist", newArtist);
                com.Parameters.AddWithValue("@newLocation", newLocation);
                com.Parameters.AddWithValue("@newExhibition", newExhibition);
                com.Parameters.AddWithValue("@newCollection", newCollection);

                // Executing Stored Procedure
                com.ExecuteNonQuery();

                // Getting ID number
                SqlConnection museumConn2 = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                SqlCommand read = new SqlCommand("SELECT ID_no FROM museumSchema.Art WHERE artName = '" + newName + "' AND artistName = '" + newArtist + "'", museumConn2);
                museumConn2.Open();
                read.Connection = museumConn2;
                SqlDataReader ID = read.ExecuteReader();
                string NewID = "";
                while (ID.Read())
                {
                    NewID += ID["ID_no"].ToString();
                }

                Label11.Visible = true; //making label visible
                Label11.Text = "New Art Submission Successful. Their new ID is: "; //making label saying successful
                Label12.Visible = true; //making label visible
                Label12.Text = NewID.ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variable from input
                string removeID = TextBox8.Text;

                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.RemoveArt");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                com.Parameters.AddWithValue("@ID", removeID);

                // Executing Stored Procedure
                com.ExecuteNonQuery();

                // Making label visible
                Label21.Visible = true; //making label visible
                Label21.Text = "Removal successful";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variables from inputs
                string searchName = TextBox9.Text;
                string searchID = TextBox16.Text;
                string searchDOC1 = TextBox10.Text;
                string searchDOC2 = TextBox15.Text;
                string searchArtist = TextBox11.Text;
                string searchLocation = TextBox12.Text;
                string searchExhibition = TextBox13.Text;
                string searchCollection = TextBox14.Text;

                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.SearchArt");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                if (searchName.Trim() != "")
                    com.Parameters.AddWithValue("@name", searchName);
                if (searchID.Trim() != "")
                    com.Parameters.AddWithValue("@ID", searchID);
                if (searchDOC1.Trim() != "")
                    com.Parameters.AddWithValue("@DOC1", searchDOC1);
                if (searchDOC2.Trim() != "")
                    com.Parameters.AddWithValue("@DOC2", searchDOC2);
                if (searchArtist.Trim() != "")
                    com.Parameters.AddWithValue("@artist", searchArtist);
                if (searchLocation.Trim() != "")
                    com.Parameters.AddWithValue("@location", searchLocation);
                if (searchExhibition.Trim() != "")
                    com.Parameters.AddWithValue("@exhibition", searchExhibition);
                if (searchCollection.Trim() != "")
                    com.Parameters.AddWithValue("@collection", searchCollection);

                // Executing Stored Procedure
                SqlDataReader rdr = com.ExecuteReader();

                // Making label visible
                Label30.Visible = true; //making label visible
                Label30.Text = "Search successful.";

                // Putting results to gridview
                GridView1.DataSource = rdr;
                GridView1.DataBind();
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variables from inputs
                string oldName = TextBox9.Text;
                string oldID = TextBox16.Text;
                string oldDOC = TextBox10.Text;
                string oldArtist = TextBox11.Text;
                string oldLocation = TextBox12.Text;
                string oldExhibition = TextBox13.Text;
                string oldCollection = TextBox14.Text;
                string newName = TextBox9.Text;
                string newID = TextBox16.Text;
                string newDOC = TextBox10.Text;
                string newArtist = TextBox11.Text;
                string newLocation = TextBox12.Text;
                string newExhibition = TextBox13.Text;
                string newCollection = TextBox14.Text;

                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.UpdateArt");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                if (oldName.Trim() != "")
                    com.Parameters.AddWithValue("@oldName", oldName);
                if (oldID.Trim() != "")
                    com.Parameters.AddWithValue("@oldID", oldID);
                if (oldDOC.Trim() != "")
                    com.Parameters.AddWithValue("@oldDOC", oldDOC);
                if (oldArtist.Trim() != "")
                    com.Parameters.AddWithValue("@oldArtist", oldArtist);
                if (oldLocation.Trim() != "")
                    com.Parameters.AddWithValue("@oldLocation", oldLocation);
                if (oldExhibition.Trim() != "")
                    com.Parameters.AddWithValue("@oldExhibition", oldExhibition);
                if (oldCollection.Trim() != "")
                    com.Parameters.AddWithValue("@oldCollection", oldCollection);
                if (newName.Trim() != "")
                    com.Parameters.AddWithValue("@newName", newName);
                if (newID.Trim() != "")
                    com.Parameters.AddWithValue("@newID", newID);
                if (newDOC.Trim() != "")
                    com.Parameters.AddWithValue("@newDOC", newDOC);
                if (newArtist.Trim() != "")
                    com.Parameters.AddWithValue("@newArtist", newArtist);
                if (newLocation.Trim() != "")
                    com.Parameters.AddWithValue("@newLocation", newLocation);
                if (newExhibition.Trim() != "")
                    com.Parameters.AddWithValue("@newExhibition", newExhibition);
                if (newCollection.Trim() != "")
                    com.Parameters.AddWithValue("@newCollection", newCollection);

                // Executing Stored Procedure
                com.ExecuteNonQuery();

                // Making label visible
                Label40.Visible = true; //making label visible
                Label40.Text = "Update successful";
            }
        }
    }
}