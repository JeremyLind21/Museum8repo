using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class FilmsDirectorManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertFilms_Click(object sender, EventArgs e)
        {
            string filmName = filmNameInsert.Text;
            string directorName = directiorNameInsertDrop.Text;
            string filmCompany = filmCompanyInsert.Text;
            string releaseDate = releaseDateInsert.Text;
            string filmLocation = filmLocationInsertDrop.Text;

            if (filmCompany == "")
                filmCompany = null;
            if (releaseDate == "")
                releaseDate = null;
            if (filmLocation == "Manager Offices")
                filmLocation = "1";
            else if (filmLocation == "Employee Lounge")
                filmLocation = "2";
            else if (filmLocation == "Supply Room")
                filmLocation = "3";
            else if (filmLocation == "Ticket Booth / Entrance")
                filmLocation = "4";
            else if (filmLocation == "Gallery")
                filmLocation = "5";
            else if (filmLocation == "Theater")
                filmLocation = "6";
            else if (filmLocation == "Merchandise Store")
                filmLocation = "7";
            else if (filmLocation == "Exhibition Room")
                filmLocation = "8";
            else
                filmLocation = "9";
            if (filmName == "")
                MessageBox.Show("Please Insert at least film name", "No Film Name detected", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
            else
            {
                SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                {
                    museumConn.Open();
                    SqlCommand insertFilm = new SqlCommand("museumSchema.InsertFilm");
                    insertFilm.Connection = museumConn;
                    insertFilm.CommandType = System.Data.CommandType.StoredProcedure;
                    try
                    {
                        insertFilm.Parameters.AddWithValue("@filmName", filmName);
                        insertFilm.Parameters.AddWithValue("@directorName", directorName);
                        insertFilm.Parameters.AddWithValue("@filmCompany", filmCompany);
                        insertFilm.Parameters.AddWithValue("@releaseDate", releaseDate);
                        insertFilm.Parameters.AddWithValue("@filmLocation", filmLocation);
                        insertFilm.ExecuteNonQuery();
                        FilmsView.DataBind();
                    }
                    catch(SqlException)
                    {
                        MessageBox.Show("Error Occured, Possible cause: incorrect Data entry","Error Occurred", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
                    }
                    
                    museumConn.Close();
                }
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            string oldfilmName = oldFilmNameUpdate.Text;
            string newfilmName = newFilmNameUpdate.Text;
            string directorName = UpdateDirectorDrop.Text;
            string filmCompany = newFilmCompanyUpdate.Text;
            string releaseDate = newReleaseDateUpdate.Text;
            string filmLocation = UpdateLocationDrop.Text;

            if (filmLocation == "Manager Offices")
                filmLocation = "1";
            else if (filmLocation == "Employee Lounge")
                filmLocation = "2";
            else if (filmLocation == "Supply Room")
                filmLocation = "3";
            else if (filmLocation == "Ticket Booth / Entrance")
                filmLocation = "4";
            else if (filmLocation == "Gallery")
                filmLocation = "5";
            else if (filmLocation == "Theater")
                filmLocation = "6";
            else if (filmLocation == "Merchandise Store")
                filmLocation = "7";
            else if (filmLocation == "Exhibition Room")
                filmLocation = "8";
            else
                filmLocation = "9";

            if (oldfilmName == "")
                MessageBox.Show("Please Insert Old Film Name", "No Film Name detected", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
            if(newfilmName == "")
                MessageBox.Show("Please Insert new film name", "No Film Name detected", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
            if (filmCompany == "")
                filmCompany = null;
            if (releaseDate == "")
                releaseDate = null;
            if(oldfilmName != "" && newfilmName != "")
            {
                SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                {
                    museumConn.Open();
                    SqlCommand updateFilms = new SqlCommand("museumSchema.ModifyFilms");
                    updateFilms.Connection = museumConn;
                    updateFilms.CommandType = System.Data.CommandType.StoredProcedure;

                    try
                    {
                        updateFilms.Parameters.AddWithValue("@oldFilmName", oldfilmName);
                        updateFilms.Parameters.AddWithValue("@newFilmName", newfilmName);
                        updateFilms.Parameters.AddWithValue("@newDirectorName", directorName);
                        updateFilms.Parameters.AddWithValue("@filmCompany", filmCompany);
                        updateFilms.Parameters.AddWithValue("@releaseDate", releaseDate);
                        updateFilms.Parameters.AddWithValue("@film_Location", filmLocation);
                        updateFilms.ExecuteNonQuery();
                        FilmsView.DataBind();

                    }
                    catch (SqlException)
                    {
                        MessageBox.Show("Error Occured, Possible cause: incorrect Data entry", "Error Occurred", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
                    }
                }
            }



        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string filmName = DeleteFilmName.Text;
            if(filmName == "")
                MessageBox.Show("Please Insert at least film name", "No Film Name detected", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
            else
            {
                var selectedOption = MessageBox.Show("Are you sure you want to delete film " + filmName, "Confirm Deletion", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2, MessageBoxOptions.DefaultDesktopOnly);
                if (selectedOption == DialogResult.Yes)
                {
                    SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                    {
                        museumConn.Open();
                        SqlCommand deleteFilm = new SqlCommand("museumSchema.DeleteFilm");
                        deleteFilm.Connection = museumConn;
                        deleteFilm.CommandType = System.Data.CommandType.StoredProcedure;
                        try
                        {
                            deleteFilm.Parameters.AddWithValue("@filmName", filmName);
                            deleteFilm.ExecuteNonQuery();
                            FilmsView.DataBind();
                        }
                        catch(SqlException)
                        {
                            MessageBox.Show("Error Occured, Possible cause: incorrect Data entry", "Error Occurred", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
                        }
                    }

                }
                if(selectedOption == DialogResult.No)
                {
                    MessageBox.Show("Deletion Aborted", "Deletion Aborted!", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);

                }

            }

        }
    }
}