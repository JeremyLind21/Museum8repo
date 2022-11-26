using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class DirectorMANAGER : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string directorName = DeleteDirectorBox.Text;
            if (directorName == "")
                MessageBox.Show("Please Insert at least director name", "No director Name detected", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
            else
            {
                var selectedOption = MessageBox.Show("Are you sure you want to delete director " + directorName, "Confirm Deletion", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2, MessageBoxOptions.DefaultDesktopOnly);
                if (selectedOption == DialogResult.Yes)
                {
                    SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                    {
                        museumConn.Open();
                        SqlCommand delete = new SqlCommand("museumSchema.DeleteDirector");
                        delete.Connection = museumConn;
                        delete.CommandType = System.Data.CommandType.StoredProcedure;
                        try
                        {
                            delete.Parameters.AddWithValue("@DirectorName", directorName);
                            delete.ExecuteNonQuery();
                            DirectorView.DataBind();
                        }
                        catch (SqlException)
                        {
                            MessageBox.Show("Error Occured, Possible cause: incorrect Data entry", "Error Occurred", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
                        }
                    }
                }
                if (selectedOption == DialogResult.No)
                    MessageBox.Show("Deletion Aborted", "Deletion Aborted!", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);


            }
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            string directorName = InsertDirectorNameBox.Text;
            string dateOfBirth = InsertBirthdayBox.Text;
            string dateOfDeath = InsertDeathDayBox.Text;
            if (dateOfBirth == "")
                dateOfBirth = null;
            if (dateOfDeath == "")
                dateOfDeath = null;
            if (directorName == "")
                MessageBox.Show("Please Insert at least director name", "No director Name detected", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
            else
            {
                SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                {
                    museumConn.Open();
                    SqlCommand insert = new SqlCommand("museumSchema.InsertDirector");
                    insert.Connection = museumConn;
                    insert.CommandType = System.Data.CommandType.StoredProcedure;
                    try
                    {
                        insert.Parameters.AddWithValue("@DirectorName", directorName);
                        insert.Parameters.AddWithValue("@DateOfBirth", dateOfBirth);
                        insert.Parameters.AddWithValue("@DateOfDeath", dateOfDeath);
                        insert.ExecuteNonQuery();
                        DirectorView.DataBind();

                    }
                    catch
                    {
                        MessageBox.Show("Error Occured, Possible cause: incorrect Data entry", "Error Occurred", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
                    }
                }

            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            string oldDirectorName = oldDirectorNameBox.Text;
            string newDirectorName = newDirectorNameBox.Text;
            string dateOfBirth = newBirthDayBox.Text;
            string dateOfDeath = newDeathDayBox.Text;
            if (dateOfBirth == "")
                dateOfBirth = null;
            if (dateOfDeath == "")
                dateOfDeath = null;
            if (oldDirectorName == "")
                MessageBox.Show("Please Insert old director name", "No director Name detected", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
            if (newDirectorName == "")
                MessageBox.Show("Please Insert new director name", "No director Name detected", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
            if (newDirectorName != "" && oldDirectorName != "")
            {
                SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                {
                    museumConn.Open();
                    SqlCommand update = new SqlCommand("museumSchema.ModifyDirector");
                    update.Connection = museumConn;
                    update.CommandType = System.Data.CommandType.StoredProcedure;
                    try
                    {
                        update.Parameters.AddWithValue("@oldDirectorName", oldDirectorName);
                        update.Parameters.AddWithValue("@newDirectorName", newDirectorName);
                        update.Parameters.AddWithValue("@newDayOfBirth", dateOfBirth);
                        update.Parameters.AddWithValue("@newDayOfDeath", dateOfDeath);
                        update.ExecuteNonQuery();
                        DirectorView.DataBind();
                    }
                    catch(SqlException)
                    {
                        MessageBox.Show("Error Occured, Possible cause: incorrect Data entry", "Error Occurred", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
                    }

                }
            }


        }
    }
}