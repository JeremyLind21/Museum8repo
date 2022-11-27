using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace WebApplication1
{
    public partial class BUY_TICKETS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PurchaseButton_Click(object sender, EventArgs e)
        {
            string custName = CustDrop.Text;
            string ticketType = TicketTypeDrop.Text;
            string amount = AmountBox.Text; 
            string exhibition = ExhibitDrop.Text;
            string collection = CollectionDrop.Text;
            string datePurchased = purchaseDate.Text;
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                museumConn.Open();
                SqlCommand purchase = new SqlCommand("museumSchema.PurchaseTicket");
                purchase.Connection = museumConn;
                purchase.CommandType = System.Data.CommandType.StoredProcedure;
                try
                {


                    purchase.Parameters.AddWithValue("@CustName", custName);
                    purchase.Parameters.AddWithValue("@ticketType", ticketType);
                    purchase.Parameters.AddWithValue("@amount", amount);
                    if (CheckBox1.Checked == false)
                        purchase.Parameters.AddWithValue("@exhibition", exhibition);
                    if (CheckBox2.Checked == false)
                        purchase.Parameters.AddWithValue("@collection", collection);
                    if (datePurchased != "")
                        purchase.Parameters.AddWithValue("@datePurchased", datePurchased);
                    purchase.ExecuteNonQuery();
                    MessageBox.Show("Purchase Successful", "PurchaseVerification", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
                }

                catch (SqlException)
                {
                    MessageBox.Show("Purchase Unsuccessful", "Failed Purchase", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);

                }
                
            }

        }
    }
}