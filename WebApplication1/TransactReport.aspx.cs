using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Data.SqlClient;
using System.Data;
using System.Drawing.Printing;



namespace WebApplication1
{
    public partial class TransactReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string paramCustName = TextBox1.Text;
            string paramItemName = TextBox2.Text;
            string paramPrice = TextBox3.Text;
            string paramLessOrGreater = TextBox4.Text;

            SqlParameter paramCust = new SqlParameter("@CustomerName", paramCustName);
            SqlParameter paramItem = new SqlParameter("@itemName", paramItemName);
            SqlParameter paramPriceB = new SqlParameter("@price", paramPrice);
            SqlParameter SQLparamLessOrGreater = new SqlParameter("@LessOrGreater", paramLessOrGreater);
            SqlDataReader rdr;

            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                SqlCommand com = new SqlCommand("museumSchema.generateReport");  //making 'com' the command Stored Procedure I made in SSMS
                museumConn.Open();
                com.Connection = museumConn;
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.Add(paramCust);
                com.Parameters.Add(paramItem);
                com.Parameters.AddWithValue("@price", paramPrice);
                com.Parameters.Add(SQLparamLessOrGreater);
                rdr = com.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();

                /*
                if(paramLessOrGreater == "")
                    if (paramCustName != "")
                    {
                        if (paramItemName != "")
                        {
                            if (paramPrice != "") // if ALL 3 are chosen
                            {
                                com.Parameters.Add(paramCust);
                                com.Parameters.Add(paramItem);
                                com.Parameters.AddWithValue("@price",paramPrice);
                                 rdr = com.ExecuteReader();
                                GridView1.DataSource = rdr;
                                GridView1.DataBind();

                            }
                            else
                            {
                                com.Parameters.Add(paramCust); // ONLY First Two
                                com.Parameters.Add(paramItem);
                                rdr = com.ExecuteReader();
                                GridView1.DataSource = rdr;
                                GridView1.DataBind();
                            }
                        }
                        else // ONLY CUSTOMER
                        {
                            com.Parameters.Add(paramCust);
                            rdr = com.ExecuteReader();
                            GridView1.DataSource = rdr;
                            GridView1.DataBind();

                        }
                    }
                    else if(paramItemName != "")
                    {
                        if(paramPrice != "") // itemName and price
                        {
                            com.Parameters.Add(paramCust); //This will be empty
                            com.Parameters.Add(paramItem);
                            com.Parameters.AddWithValue("@price",paramPrice);
                            rdr = com.ExecuteReader();
                            GridView1.DataSource = rdr;
                            GridView1.DataBind();
                        }
                        else // only itemName
                        {
                            com.Parameters.Add(paramCust); //This will be empty
                            com.Parameters.Add(paramItem);
                            rdr = com.ExecuteReader();
                            GridView1.DataSource = rdr;
                            GridView1.DataBind();
                        }
                    }
                    else if(paramPrice != "") // only price is entered
                    {
                        com.Parameters.Add(paramCust); //This will be empty
                        com.Parameters.Add(paramItem); //This will be empty
                        com.Parameters.AddWithValue("@price", paramPrice);
                        rdr = com.ExecuteReader();
                        GridView1.DataSource = rdr;
                        GridView1.DataBind();

                    }
                    else // No params
                    {
                        rdr = com.ExecuteReader();
                        GridView1.DataSource = rdr;
                        GridView1.DataBind();
                    }
                else // LessOrGreater has been specified, WE ASSUME THAT PRICE HAS BEEN PUT IN AS WELL
                {
                    if(paramCustName != "" && paramItemName != "" && paramLessOrGreater == "<")
                    {
                        com.Parameters.AddWithValue("@CustomerName",paramCust);
                        com.Parameters.AddWithValue("@itemOrTicket",paramItem);
                        com.Parameters.AddWithValue("@price", paramPrice);
                        com.Parameters.Add(SQLparamLessOrGreater);
                        rdr = com.ExecuteReader();
                        GridView1.DataSource = rdr;
                        GridView1.DataBind();
                    }
                    else if(paramCustName!=  "" && paramLessOrGreater == "<")
                    {
                        com.Parameters.AddWithValue("@CustomerName", paramCust);
                        com.Parameters.AddWithValue("@price", paramPrice);
                        com.Parameters.AddWithValue("LessOrGreater", paramLessOrGreater);
                        rdr = com.ExecuteReader();
                        GridView1.DataSource = rdr;
                        GridView1.DataBind();

                    }
                    else if(paramItemName != "" && paramLessOrGreater != "<")
                    {
                        com.Parameters.AddWithValue("@itemOrTicket", paramItem);
                        com.Parameters.AddWithValue("@price", paramPrice);
                        com.Parameters.AddWithValue("@LessOrGreater",SQLparamLessOrGreater);
                        rdr = com.ExecuteReader();
                        GridView1.DataSource = rdr;
                        GridView1.DataBind();
                    }
                    else if(paramLessOrGreater != "<") // Just less than price
                    {
                        com.Parameters.AddWithValue("@price", paramPrice);
                        com.Parameters.AddWithValue("@LessOrGreater",SQLparamLessOrGreater);
                        rdr = com.ExecuteReader();
                        GridView1.DataSource = rdr;
                        GridView1.DataBind();

                    }
                    else if (paramCustName != "" && paramItemName != "" && paramLessOrGreater == ">")
                    {
                        com.Parameters.Add(paramCust);
                        com.Parameters.Add(paramItem);
                        com.Parameters.AddWithValue("@price", paramPrice);
                        com.Parameters.Add(SQLparamLessOrGreater);
                        rdr = com.ExecuteReader();
                        GridView1.DataSource = rdr;
                        GridView1.DataBind();
                    }
                    else if (paramCustName != "" && paramLessOrGreater == ">")
                    {
                        com.Parameters.Add(paramCust);
                        com.Parameters.AddWithValue("@price", paramPrice);
                        com.Parameters.Add(SQLparamLessOrGreater);
                        rdr = com.ExecuteReader();
                        GridView1.DataSource = rdr;
                        GridView1.DataBind();

                    }
                    else if (paramItemName != "" && paramLessOrGreater != ">")
                    {
                        com.Parameters.Add(paramItem);
                        com.Parameters.AddWithValue("@price", paramPrice);
                        com.Parameters.Add(SQLparamLessOrGreater);
                        rdr = com.ExecuteReader();
                        GridView1.DataSource = rdr;
                        GridView1.DataBind();
                    }
                    else // just price and greater than
                    {
                        com.Parameters.Add(SQLparamLessOrGreater);
                        rdr = com.ExecuteReader();
                        GridView1.DataSource = rdr;
                        GridView1.DataBind();

                    }
                 */

            
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}