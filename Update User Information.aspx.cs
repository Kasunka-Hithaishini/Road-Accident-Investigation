using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace Road_Accident_Investigation
{
    public partial class Update_User_Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnshowdata_Click(object sender, EventArgs e)
        {
            string UserId = txtUID.Text;

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

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string UserName = txtUsername.Text;

            string Email = txtEmail.Text;
            string VehNum = txtVehiclenum.Text;
            string Date = txtDate.Text;
            string Time = txtTime.Text;
            string Location = txtLocation.Text;
            string InCompany = txtInsurance.Text;
            string Accno = txtaccNumber.Text;


            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
            string qry = "Update InputUserData set UserName='" + UserName + "',UserEmail='" + Email + "',VehicleNumber='" + VehNum + "',DateOfAccident='" + Date + "',TimeOfAccident='" + Time + "',AccidentLocation='" + Location + "',InsuranceCompany='" + InCompany + "' where AccidentNo='" + Accno + "'";
            SqlCommand cmd = new SqlCommand(qry, con);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Updated successfully");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string VehNum = txtVehiclenum.Text;
            string Location = txtLocation.Text;
            string ImgId = txtimageID.Text;

            if (VehNum != "")
            {
                SqlConnection convn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
                string qryvn = "Update Images set VehicleNumber='" + VehNum + "',AccidentLocation='" + Location + "' where ImageID='" + ImgId + "'";
                SqlCommand cmdvn = new SqlCommand(qryvn, convn);

                try
                {
                    convn.Open();
                    cmdvn.ExecuteNonQuery();
                    Response.Write("Updated successfully");

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    convn.Close();
                }

            }

            if (Location != "")
            {
                SqlConnection conlc = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
                string qrylc = "Update Images set AccidentLocation='" + Location + "' where ImageID='" + ImgId + "'";
                SqlCommand cmdlc = new SqlCommand(qrylc, conlc);

                try
                {
                    conlc.Open();
                    cmdlc.ExecuteNonQuery();
                    Response.Write("Updated successfully");

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    conlc.Close();
                }

            }





            if (txtEvidences1.HasFiles)
            {
                try
                {
                    string extension = Path.GetExtension(txtEvidences1.FileName);
                    if (extension == ".jpg" || extension == ".jpg" || extension == ".png")
                    {

                        string fname = Path.GetFileName(txtEvidences1.FileName);
                        txtEvidences1.SaveAs(Server.MapPath("Images/") + fname);
                        using (SqlConnection conI = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30"))
                        {
                            conI.Open();
                            SqlCommand cmdI = new SqlCommand("Update Images set Image='" + txtEvidences1.FileName + "' where ImageID='" + ImgId + "'", conI);
                            int m = cmdI.ExecuteNonQuery();
                            if (m > 0)
                            {
                                Response.Write("<script>alert('File has been updated successfully')</script>");
                            }

                        }




                    }
                    else
                    {
                        lblmsg.Text = "only jpg,jpeg,png files are accepted !";

                    }

                }

                catch (Exception ex)
                {
                    lblmsg.Text = "couldn't update the file error:" + ex.Message;
                }
            }
        }
    }
}