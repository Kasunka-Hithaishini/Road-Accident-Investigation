using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Road_Accident_Investigation
{
    public partial class InsuranceAccidentsaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Grid()
        {
            string Insurance1 = txtIns.Text;

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30"))
            {


                con.Open();
                SqlCommand cmd = new SqlCommand("select UserName,UserId,UserEmail from InputUserData where InsuranceCompany='" + Insurance1 + "'", con);
                SqlDataReader sd = cmd.ExecuteReader();
                if (sd.HasRows == true)
                {
                    GridView1.DataSource = sd;
                    GridView1.DataBind();
                }



            }


        }

        protected void Grid2()
        {
            string Insurance = txtIns.Text;

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30"))
            {


                con.Open();
                SqlCommand cmd = new SqlCommand("select * from InputUserData where InsuranceCompany='" + Insurance + "'", con);
                SqlDataReader sd = cmd.ExecuteReader();
                if (sd.HasRows == true)
                {
                    GridView1.DataSource = sd;
                    GridView1.DataBind();
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Insurance = txtIns.Text;
            string Passw = txtPass.Text;

            SqlConnection sql = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
            string query = "select InsurancePassword from InsuranceAccount where CompanyName='" + Insurance + "'";
            SqlCommand cmnd = new SqlCommand(query, sql);

            try
            {
                sql.Open();
                SqlDataReader sd = cmnd.ExecuteReader();


                while (sd.Read())
                {
                    string Password = sd["InsurancePassword"].ToString();


                    if (Password == Passw)
                    {
                        Grid();
                    }
                    else
                    {
                        Response.Write("Incorrect password");
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            string Insurance = txtIns.Text;
            string Passw = txtPass.Text;

            SqlConnection sql = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
            string query = "select InsurancePassword from InsuranceCompany where CompanyName='" + Insurance + "'";
            SqlCommand cmnd = new SqlCommand(query, sql);

            try
            {
                sql.Open();
                SqlDataReader sd = cmnd.ExecuteReader();


                while (sd.Read())
                {
                    string Password = sd["InsurancePassword"].ToString();


                    if (Password == Passw)
                    {
                        Grid2();
                    }
                    else
                    {
                        Response.Write("Incorrect password");
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string AccNo = txtAccNo.Text;

            SqlConnection sql = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
            string qry = "Insert into ApprovedAccidentsbyInsurance values('" + AccNo + "')";
            SqlCommand cmnd = new SqlCommand(qry, sql);

            try
            {
                sql.Open();
                cmnd.ExecuteNonQuery();
                lblmsg.Text = "Accident was approved";

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            finally
            {
                sql.Close();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "Accident was denied";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsuranceCreateNewAccount.aspx");
        }
    }
}