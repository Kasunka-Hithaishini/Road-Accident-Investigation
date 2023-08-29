using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

namespace Road_Accident_Investigation
{
    public partial class Data : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Grid()
        {
            string location = ddlist.SelectedValue;

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30"))
            {


                con.Open();
                SqlCommand cmd = new SqlCommand("select UserName,UserId,UserEmail from InputUserData where AccidentLocation='" + location + "'", con);
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
            string location = ddlist.SelectedValue;

            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30"))
            {


                con.Open();
                SqlCommand cmd = new SqlCommand("select * from InputUserData where AccidentLocation='" + location + "'", con);
                SqlDataReader sd = cmd.ExecuteReader();
                if (sd.HasRows == true)
                {
                    GridView1.DataSource = sd;
                    GridView1.DataBind();
                }

            }
        }

        protected void DisImg()
        {
            string location = ddlist.SelectedValue;

            using (SqlConnection conrt = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30"))
            {
                conrt.Open();
                SqlCommand cmdrt = new SqlCommand("select * from Images where AccidentLocation='" + location + "'", conrt);
                SqlDataReader dr = cmdrt.ExecuteReader();

                if (dr.HasRows == true)
                {
                    GridView2.DataSource = dr;
                    GridView2.DataBind();
                }
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string location = ddlist.SelectedValue;
            string Passw = txtpass.Text;

            SqlConnection sql = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
            string query = "select PLpassword from PoliceAccount where PoliceDistrict='" + location + "'";
            SqlCommand cmnd = new SqlCommand(query, sql);

            try
            {
                sql.Open();
                SqlDataReader sd = cmnd.ExecuteReader();


                while (sd.Read())
                {
                    string Password = sd["PLpassword"].ToString();


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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PoliceCreateNewAccount.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string location =ddlist.SelectedValue;
            string Passw = txtpass.Text;

            SqlConnection sql = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
            string query = "select PLpassword from PoliceAccount where PoliceDistrict='" + location + "'";
            SqlCommand cmnd = new SqlCommand(query, sql);

            try
            {
                sql.Open();
                SqlDataReader sd = cmnd.ExecuteReader();


                while (sd.Read())
                {
                    string Password = sd["PLpassword"].ToString();


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

        protected void Button2_Click(object sender, EventArgs e)
        {

            string location = ddlist.SelectedValue;
            string Passw = txtpass.Text;

            SqlConnection sql = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
            string query = "select PLpassword from PoliceAccount where PoliceDistrict='" + location + "'";
            SqlCommand cmnd = new SqlCommand(query, sql);

            try
            {
                sql.Open();
                SqlDataReader sd = cmnd.ExecuteReader();


                while (sd.Read())
                {
                    string Password = sd["PLpassword"].ToString();


                    if (Password == Passw)
                    {
                        DisImg();

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

        protected void Button3_Click(object sender, EventArgs e)
        {
            string AccNo = txtAccNo.Text;

            SqlConnection sql = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
            string qry = "Insert into ApprovedAccidentsbyPolice values('" + AccNo + "')";
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            string AccNo = txtAccNo.Text;
            lblmsg.Text = "Accident was denied";
        }
    }
}