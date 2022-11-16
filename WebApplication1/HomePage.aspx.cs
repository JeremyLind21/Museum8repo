using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogIn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/SignInPage.aspx");
        }

        protected void ButtonHome_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/HomePage.aspx");
        }

        protected void ButtonCollections_Click1(object sender, EventArgs e)
        {

        }

        protected void ButtonExhibitions_Click1(object sender, EventArgs e)
        {

        }

        protected void ButtonFilms_Click1(object sender, EventArgs e)
        {
           
        }

        protected void ButtonMemberships_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/Membership.aspx");
        }

        protected void ButtonDonate_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/Donations.aspx");
        }

        protected void ButtonEmployees_Click1(object sender, EventArgs e)
        {

        }

        protected void ButtonLocations_Click1(object sender, EventArgs e)
        {

        }

        protected void ButtonTickets_Click1(object sender, EventArgs e)
        {
            Response.Redirect("https://museuminterface.azurewebsites.net/Tickets.aspx");
        }
    }
}

