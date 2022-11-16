﻿using System;
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
    public partial class Employees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NewEmployeeSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variables from inputs
                string newEmployeeName = NewEmployeeName.Text;
                string newEmployeeSSN = NewEmployeeSSN.Text;
                string newEmployeeSupSSN = NewEmployeeSupSSN.Text;
                string newEmployeeDOB = NewEmployeeDOB.Text;
                string newEmployeeGender = NewEmployeeGender.Text;
                string newEmployeeWage = NewEmployeeWage.Text;
                string newEmployeeJob = NewEmployeeJob.Text;
                string newEmployeeLocation = NewEmployeeLocation.Text;
                string newEmployeeStart = NewEmployeeStart.Text;

                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.CreateNewEmployee");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                com.Parameters.AddWithValue("@newEmployeeName", newEmployeeName);
                com.Parameters.AddWithValue("@newEmployeeSSN", newEmployeeSSN);
                com.Parameters.AddWithValue("@newEmployeeSupSSN", newEmployeeSupSSN);
                com.Parameters.AddWithValue("@newEmployeeDOB", newEmployeeDOB);
                com.Parameters.AddWithValue("@newEmployeeGender", newEmployeeGender);
                com.Parameters.AddWithValue("@newEmployeeWage", newEmployeeWage);
                com.Parameters.AddWithValue("@newEmployeeJob", newEmployeeJob);
                com.Parameters.AddWithValue("@newEmployeeLocation", newEmployeeLocation);
                com.Parameters.AddWithValue("@newEmployeeStart", newEmployeeStart);

                // Executing Stored Procedure
                com.ExecuteNonQuery();

                // Getting ID number
                SqlConnection museumConn2 = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                SqlCommand read = new SqlCommand("SELECT ID_num FROM museumSchema.Employees WHERE SSN =" + newEmployeeSSN, museumConn2);
                museumConn2.Open();
                read.Connection = museumConn2;
                SqlDataReader ID = read.ExecuteReader();
                string newEmployeeID = "";
                while (ID.Read())
                {
                    newEmployeeID += ID["ID_num"].ToString();
                }

                Label30.Visible = true; //making label visible
                Label30.Text = "New Employee Submission Successful. Their new ID is: "; //making label saying successful
                Label34.Visible = true; //making label visible
                Label34.Text = newEmployeeID.ToString();
            }
        }

        protected void DeleteEmployeeSubmit0_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variable from input
                string DeleteEmployeeSSN = TextBox11.Text;

                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.DeleteEmployee");  //making 'com' the command Stored Procedure I made in SSMS
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                com.Parameters.AddWithValue("@deleteEmployeeSSN", DeleteEmployeeSSN);

                // Executing Stored Procedure
                com.ExecuteNonQuery();

                // Making label visible
                Label31.Visible = true; //making label visible
                Label31.Text = "Termination successful";
            }
        }

        protected void SearchEmployeeSubmit1_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variables from inputs
                string searchEmployeeName = TextBox12.Text;
                string searchEmployeeID = TextBox23.Text;
                string searchEmployeeSSN = TextBox13.Text;
                string searchEmployeeSupSSN = TextBox14.Text;
                string searchEmployeeDOB = TextBox15.Text;
                string searchEmployeeGender = DropDownList2.Text;
                string searchEmployeeWage = TextBox16.Text;
                string searchEmployeeJob = TextBox17.Text;
                string searchEmployeeLocation = TextBox18.Text;
                string searchEmployeeStart1 = TextBox19.Text;
                string searchEmployeeStart2 = TextBox21.Text;
                string searchEmployeeEnd1 = TextBox20.Text;
                string searchEmployeeEnd2 = TextBox22.Text;

                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.SearchEmployee");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                if (searchEmployeeName.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeName", searchEmployeeName);
                if (searchEmployeeID.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeID", searchEmployeeID);
                if (searchEmployeeSSN.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeSSN", searchEmployeeSSN);
                if (searchEmployeeSupSSN.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeSupSSN", searchEmployeeSupSSN);
                if (searchEmployeeDOB.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeDOB", searchEmployeeDOB);
                if (searchEmployeeGender.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeGender", searchEmployeeGender);
                if (searchEmployeeWage.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeWage", searchEmployeeWage);
                if (searchEmployeeJob.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeJob", searchEmployeeJob);
                if (searchEmployeeLocation.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeLocation", searchEmployeeLocation);
                if (searchEmployeeStart1.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeStart1", searchEmployeeStart1);
                if (searchEmployeeStart2.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeStart2", searchEmployeeStart2);
                if (searchEmployeeEnd1.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeEnd1", searchEmployeeEnd1);
                if (searchEmployeeEnd2.Trim() != "")
                    com.Parameters.AddWithValue("@searchEmployeeEnd2", searchEmployeeEnd2);

                // Executing Stored Procedure
                SqlDataReader rdr = com.ExecuteReader();

                // Making label visible
                Label32.Visible = true; //making label visible
                Label32.Text = "Search successful.";

                // Putting results to gridview
                GridView1.DataSource = rdr;
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variables from inputs
                string oldEmployeeName = OldName.Text;
                string oldEmployeeID = OldID.Text;
                string oldEmployeeSSN = OldSSN.Text;
                string oldEmployeeSupSSN = OldSupSSN.Text;
                string oldEmployeeDOB = OldDOB.Text;
                string oldEmployeeGender = OldGender.Text;
                string oldEmployeeWage = OldWage.Text;
                string oldEmployeeJob = OldJob.Text;
                string oldEmployeeLocation = OldLoc.Text;
                string oldEmployeeStart = OldStart.Text;
                string oldEmployeeEnd = OldEnd.Text;
                string newEmployeeName = NewName.Text;
                string newEmployeeID = NewID.Text;
                string newEmployeeSSN = NewSSN.Text;
                string newEmployeeSupSSN = NewSupSSN.Text;
                string newEmployeeDOB = NewDOB.Text;
                string newEmployeeGender = NewGender.Text;
                string newEmployeeWage = NewWage.Text;
                string newEmployeeJob = NewJob.Text;
                string newEmployeeLocation = NewLoc.Text;
                string newEmployeeStart = NewStart.Text;
                string newEmployeeEnd = NewEnd.Text;

                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.ModifyEmployees");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                if (oldEmployeeName.Trim() != "")
                    com.Parameters.AddWithValue("@oldEmployeeName", oldEmployeeName);
                if (oldEmployeeID.Trim() != "")
                    com.Parameters.AddWithValue("@oldEmployeeID", oldEmployeeID);
                if (oldEmployeeSSN.Trim() != "")
                    com.Parameters.AddWithValue("@oldEmployeeSSN", oldEmployeeSSN);
                if (oldEmployeeSupSSN.Trim() != "")
                    com.Parameters.AddWithValue("@oldEmployeeSupSSN", oldEmployeeSupSSN);
                if (oldEmployeeDOB.Trim() != "")
                    com.Parameters.AddWithValue("@oldEmployeeDOB", oldEmployeeDOB);
                if (oldEmployeeGender.Trim() != "")
                    com.Parameters.AddWithValue("@oldEmployeeGender", oldEmployeeGender);
                if (oldEmployeeWage.Trim() != "")
                    com.Parameters.AddWithValue("@oldEmployeeWage", oldEmployeeWage);
                if (oldEmployeeJob.Trim() != "")
                    com.Parameters.AddWithValue("@oldEmployeeJob", oldEmployeeJob);
                if (oldEmployeeLocation.Trim() != "")
                    com.Parameters.AddWithValue("@oldEmployeeLocation", oldEmployeeLocation);
                if (oldEmployeeStart.Trim() != "")
                    com.Parameters.AddWithValue("@oldEmployeeStart", oldEmployeeStart);
                if (oldEmployeeEnd.Trim() != "")
                    com.Parameters.AddWithValue("@oldEmployeeEnd", oldEmployeeEnd);
                if (newEmployeeName.Trim() != "")
                    com.Parameters.AddWithValue("@newEmployeeName", newEmployeeName);
                if (newEmployeeID.Trim() != "")
                    com.Parameters.AddWithValue("@newEmployeeID", newEmployeeID);
                if (newEmployeeSSN.Trim() != "")
                    com.Parameters.AddWithValue("@newEmployeeSSN", newEmployeeSSN);
                if (newEmployeeSupSSN.Trim() != "")
                    com.Parameters.AddWithValue("@newEmployeeSupSSN", newEmployeeSupSSN);
                if (newEmployeeDOB.Trim() != "")
                    com.Parameters.AddWithValue("@newEmployeeDOB", newEmployeeDOB);
                if (newEmployeeGender.Trim() != "")
                    com.Parameters.AddWithValue("@newEmployeeGender", newEmployeeGender);
                if (newEmployeeWage.Trim() != "")
                    com.Parameters.AddWithValue("@newEmployeeWage", newEmployeeWage);
                if (newEmployeeJob.Trim() != "")
                    com.Parameters.AddWithValue("@newEmployeeJob", newEmployeeJob);
                if (newEmployeeLocation.Trim() != "")
                    com.Parameters.AddWithValue("@newEmployeeLocation", newEmployeeLocation);
                if (newEmployeeStart.Trim() != "")
                    com.Parameters.AddWithValue("@newEmployeeStart", newEmployeeStart);
                if (newEmployeeEnd.Trim() != "")
                    com.Parameters.AddWithValue("@newEmployeeEnd", newEmployeeEnd);

                // Executing Stored Procedure
                com.ExecuteNonQuery();

                // Making label visible
                Label47.Visible = true; //making label visible
                Label47.Text = "Update successful";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}