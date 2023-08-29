using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Road_Accident_Investigation
{
    public partial class PoliceCreateNewAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUP_Click(object sender, EventArgs e)
        {
            Response.Redirect("Data.aspx");
        }

        protected void rdabtnsignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Data.aspx");
        }

        protected void btnSignUP_Click1(object sender, EventArgs e)
        {
            string Password = txtwebmasterPassword.Text;

            if (Password == "WEBMASTER")
            {
                string PoliceDis = txtPLdistrict.Text;
                string PolicePassword = txtPass.Text;

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
                string sql = "Insert into PoliceAccount values('" + PoliceDis + "','" + PolicePassword + "')";
                SqlCommand cmd = new SqlCommand(sql, con);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblmsg.Text = "The data inserted successfully";
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

            }

            else
            {
                lblmsg.Text = "The Web Master Password is incorrect";

            }
        }
    }
}