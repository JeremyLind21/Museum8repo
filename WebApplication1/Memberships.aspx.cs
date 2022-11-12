using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Memeberships : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            inputFname.MaxLength = 32;
            inputLname.MaxLength = 32;
            inputFname0.MaxLength = 32;
            inputLname0.MaxLength = 32;
        }

        protected void ButtonSubmitSignUp_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                string Fname = inputFname.Text;
                string Lname = inputLname.Text;
                int Price = 0;

                if (inputMemberType.SelectedIndex == 0)
                {
                    Price = 40;
                }
                else if (inputMemberType.SelectedIndex == 1)
                {
                    Price = 70;
                }

                SqlCommand addMember = new SqlCommand("museumSchema.AddNewMember");
                museumConn.Open();
                addMember.Connection = museumConn;
                addMember.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter("@NewMemberName", Fname + " " + Lname);
                SqlParameter param2 = new SqlParameter("@MemberPrice", Price);

                addMember.Parameters.Add(param);
                addMember.Parameters.Add(param2);

                addMember.ExecuteNonQuery();

                LabelSignUpSubmit.Visible = true;
                LabelSignUpSubmit.Text = "Subscription Successful";
            }
        }

        protected void ButtonSubmitUnsub_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string Fname0 = inputFname0.Text;
                string Lname0 = inputLname0.Text;

                SqlCommand deleteMember = new SqlCommand("museumSchema.DeleteMember");
                museumConn.Open();
                deleteMember.Connection = museumConn;
                deleteMember.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter("@MemberName", Fname0 + " " + Lname0);

                deleteMember.Parameters.Add(param);

                deleteMember.ExecuteNonQuery();

                LabelUnsubSubmit.Visible = true;
                LabelUnsubSubmit.Text = "Unsubcription Successful";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {

                string Fname1 = inputFname1.Text;
                string Lname1 = inputLname1.Text;

                SqlCommand checkMembership = new SqlCommand("museumSchema.CheckIfMember");
                museumConn.Open();
                checkMembership.Connection = museumConn;
                checkMembership.CommandType = System.Data.CommandType.StoredProcedure;

                if (Fname1 + Lname1.Trim() != "")
                {
                    SqlParameter param = new SqlParameter("@SearchMemberName", Fname1 + " " + Lname1);
                    checkMembership.Parameters.Add(param);

                }

                SqlDataReader rdr = checkMembership.ExecuteReader();
                LabelCheckMembership.Visible = true;
                LabelCheckMembership.Text = "Membership Search Successful (If no table then no results)";
                GridView1.DataSource = rdr;
                GridView1.DataBind();
            }
        }
    }
}

