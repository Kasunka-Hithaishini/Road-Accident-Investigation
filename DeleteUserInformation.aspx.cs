using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Road_Accident_Investigation
{
    public partial class DeleteUserInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {

            string UserId = txtUserID.Text;

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30"))
            {


                con.Open();
                SqlCommand cmd = new SqlCommand("select * from InputUserData where UserId='" + UserId + "'", con);
                SqlDataReader sd = cmd.ExecuteReader();
                if (sd.HasRows == true)
                {
                    GridView1.DataSource = sd;
                    GridView1.DataBind();
                }



            }

            using (SqlConnection conrt = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30"))
            {
                conrt.Open();
                SqlCommand cmdrt = new SqlCommand("select * from Images where UserId='" + UserId + "'", conrt);
                SqlDataReader dr = cmdrt.ExecuteReader();

                if (dr.HasRows == true)
                {
                    GridView2.DataSource = dr;
                    GridView2.DataBind();
                }
            }


        }

        protected void btnimgdelete_Click(object sender, EventArgs e)
        {
            string ImgId = txtimgID.Text;

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
            string qry = "Delete from Images where ImageID='" + ImgId + "'";
            SqlCommand cmd = new SqlCommand(qry, con);


            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Data deleted successfully");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnDeletedata_Click(object sender, EventArgs e)
        {
            string AccNo = txtdeletedata.Text;

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
            string qry = "Delete from InputUserData where AccidentNo='" + AccNo + "'";
            SqlCommand cmd = new SqlCommand(qry, con);


            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Data deleted successfully");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}