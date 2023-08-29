using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Road_Accident_Investigation
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("RDA Office.aspx");
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Police Department.aspx");
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insurance Company.aspx");
        }

        protected void imgLogin_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("User Registration.aspx");
        }

        protected void imgInputData_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Input User Information.aspx");
        }

        protected void imgUpdate_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Update User Information.aspx");
        }

        protected void imgGraph_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Graphs.aspx");
        }

        protected void rdaMInfo_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("RDA Office.aspx");
        }

        protected void policeMInfo_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Police Department.aspx");
        }

        protected void insuranceMInfo_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Insurance Company.aspx");
        }
    }
}