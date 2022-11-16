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
    public partial class Merchandise : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variables from inputs
                string name = TextBox1.Text;
                string price = TextBox3.Text;
                string collection = TextBox4.Text;
                string exhibition = TextBox5.Text;
                string amount = TextBox6.Text;
                string sales = TextBox8.Text;
                string maxStock = TextBox9.Text;

                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.CreateNewMerchandise");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                com.Parameters.AddWithValue("@name", name);
                com.Parameters.AddWithValue("@price", price);
                if (collection.Trim() != "")
                    com.Parameters.AddWithValue("@collection", collection);
                if (exhibition.Trim() != "")
                    com.Parameters.AddWithValue("@exhibition", exhibition);
                com.Parameters.AddWithValue("@amount", amount);
                if (sales.Trim() != "")
                    com.Parameters.AddWithValue("@sales", sales);
                com.Parameters.AddWithValue("@maxStock", maxStock);

                // Executing Stored Procedure
                com.ExecuteNonQuery();

                // Making labels visible
                Label11.Visible = true; //making label visible
                Label11.Text = "New Merchandise Submission Successful.";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variable from input
                string removeName = TextBox10.Text;

                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.RemoveMerchandiseItem");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                com.Parameters.AddWithValue("@name", removeName);

                // Executing Stored Procedure
                com.ExecuteNonQuery();

                // Making label visible
                Label21.Visible = true; //making label visible
                Label21.Text = "Removal successful";
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                // Naming variables from inputs
                string name = TextBox11.Text;
                string price = TextBox12.Text;
                string collection = TextBox13.Text;
                string exhibition = TextBox14.Text;
                string amount = TextBox15.Text;
                string sales = TextBox16.Text;
                string maxStock = TextBox17.Text;

                // Opening connection to the database and stored procedure
                SqlCommand com = new SqlCommand("museumSchema.SearchMerchandiseItem");
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;

                // Connecting variables to StoreProcedure's variables
                if (name.Trim() != "")
                    com.Parameters.AddWithValue("@name", name);
                if (price.Trim() != "")
                    com.Parameters.AddWithValue("@price", price);
                if (collection.Trim() != "")
                    com.Parameters.AddWithValue("@collection", collection);
                if (exhibition.Trim() != "")
                    com.Parameters.AddWithValue("@exhibition", exhibition);
                if (amount.Trim() != "")
                    com.Parameters.AddWithValue("@amount", amount);
                if (sales.Trim() != "")
                    com.Parameters.AddWithValue("@sales", sales);
                if (maxStock.Trim() != "")
                    com.Parameters.AddWithValue("@maxStock", maxStock);

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
    }
}