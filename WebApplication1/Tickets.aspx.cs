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
    public partial class TicketsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string newCustomerName = TextBox2.Text;  //making newTicketMember the membership input
                string newTicketType = DropDownList2.Text; //making newTicketLocation the Location input
                string newTicketAmount = TextBox1.Text; // making the newTicketDate the date input

                SqlCommand com = new SqlCommand("museumSchema.InsertTicket");  //making 'com' the command Stored Procedure I made in SSMS
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter("@CustomerName", newCustomerName);  //making 'param' the Name parameters
                SqlParameter param2 = new SqlParameter("@TicketType", newTicketType); //making 'param2' the Name parameters
                SqlParameter param3 = new SqlParameter("@TicketAmount", newTicketAmount); //making 'param3' the Name parameters
                //SqlParameter param4 = new SqlParameter("@Price", newTicketPrice); //making 'param4' the Name parameters


                com.Parameters.Add(param); //connecting parameteres to Stored Procedure command in SSMS
                com.Parameters.Add(param2); //connecting parameteres to Stored Procedure command in SSMS
                com.Parameters.Add(param3); //connecting parameteres to Stored Procedure command in SSMS
                //com.Parameters.Add(param4); //connecting parameteres to Stored Procedure command in SSMS


                com.ExecuteNonQuery(); //executing the Stored Procedure 'INSERT' command
                //here if SQL command doesn't work it should bring you to an error page
                Label6.Visible = true; //making label visible
                Label6.Text = "New Ticket Submission Successful"; //making label saying successful
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}