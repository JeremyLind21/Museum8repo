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
    public partial class BUYSMerchandise : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string custName = CustNameDrop.Text;
            string itemName = ItemNameBox.Text;
            string itemAmount = ItemAmountBox.Text;
            string purchaseDate = DateBox.Text;
            int Amount = 0;

          

            if (purchaseDate == "")
                purchaseDate = null;
            if(itemAmount == "")
                MessageBox.Show("Please Specify Item Amount", "No Merchandise Amount detected", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
            if (itemName == "")
                MessageBox.Show("Please Specify Item Name", "No Merchandise Name detected", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
            if(itemName != "" && itemAmount != "")
            {
                SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                {
                    museumConn.Open();
                    SqlCommand purchase = new SqlCommand("museumSchema.PurchaseMerch");
                    //SqlCommand checkAmount = new SqlCommand("museumSchema.selectmerchAmount");
                    purchase.Connection = museumConn;
                    purchase.CommandType = System.Data.CommandType.StoredProcedure;
                    try
                    {
                        purchase.Parameters.AddWithValue("@CustomerName", custName);
                        purchase.Parameters.AddWithValue("@itemName", itemName);
                        purchase.Parameters.AddWithValue("@itemAmount", itemAmount);
                        purchase.Parameters.AddWithValue("@itemPurchaseDate", purchaseDate);
                        purchase.ExecuteNonQuery();
                        MessageBox.Show("Purchase Successful", "PurchaseVerification", MessageBoxButtons.OK, MessageBoxIcon.Information, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
                        GridView1.DataBind();

                    }
                    catch (SqlException ex)
                    {
                        if(ex.Number == 51000)
                        {
                            MessageBox.Show("Sorry,We do not have enough stock to currently process your order", "Insufficient Stock", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);

                        }
                        else
                            MessageBox.Show("Error Occured, Possible Cause: Incorrect Data Entry", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning, MessageBoxDefaultButton.Button1, MessageBoxOptions.DefaultDesktopOnly);
                    } 
                }

            }





        }
    }
}