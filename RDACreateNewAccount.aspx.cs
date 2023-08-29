using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Road_Accident_Investigation
{
    public partial class RDACreateNewAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RDAbtnSignUP_Click(object sender, EventArgs e)
        {
            string Password = txtwebmasterPassword.Text;

            if (Password == "WEBMASTER")
            {
                string RDAdistrict = txtdistrict.Text;
                string RDAPass = txtPass.Text;



                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
                string sql = "Insert into RDAaccount values('" + RDAdistrict + "','" + RDAPass + "')";
                SqlCommand cmd = new SqlCommand(sql, con);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    string msg = "The Data was inserted successfully";
                    lblmsg.Text = msg;
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }


            }

            else
            {
                lblmsg.Text = "The Web master password is incorrect";

            }
        }
    }
}