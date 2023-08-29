using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace Road_Accident_Investigation
{
    public partial class Input_User_Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtUIDnumber.Text = "";
            txtEmail.Text = "";
            txtVehiclenum.Text = "";
            txtVehicletype.Text = "";
            txtDate.Text = "";
            txtTime.Text = "";
            txtCauseOfAccident.Text = "";
            txtLocation.Text = "";
            txtInsurance.Text = "";

        }

        protected void btninputdata_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string uID = txtUIDnumber.Text;
            string userEmail = txtEmail.Text;
            string vehicleNum=txtVehiclenum.Text;
            string vehicleType = txtVehicletype.Text;
            string accDate = txtDate.Text;
            string accTime = txtTime.Text;
            string accLocation = txtLocation.Text;
            string accCause = txtCauseOfAccident.Text;
            string insurance = txtInsurance.Text;

            
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30");
            string qry1 = "Insert into InputUserData values('" + username + "','" + uID + "','" + userEmail + "','" + vehicleNum + "','" + vehicleType + "','" + accDate + "','" + accTime + "','" + accLocation + "','" + accCause + "','" + insurance + "')";

            SqlCommand cmd = new SqlCommand(qry1, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                string success = "Information inserted successfully";
                lblinsertSuccess.Text = success;
            }

            catch (Exception ex)
            {
                Response.Write("Error occured" + ex);
            }

            finally
            {
                con.Close();
            }
        }

        protected void btnimgSubmit_Click(object sender, EventArgs e)
        {
            string vehicleNum = txtVehiclenum.Text;
            string accLocation = txtLocation.Text;
            string uID = txtUIDnumber.Text;

            if (txtEvidences1.HasFiles)
            {
                try
                {
                    string extension = Path.GetExtension(txtEvidences1.FileName);
                    if (extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                    {
                        if (txtEvidences1.PostedFile.ContentLength <= 102400)
                        {
                            string fname = Path.GetFileName(txtEvidences1.FileName);
                            txtEvidences1.SaveAs(Server.MapPath("Images/") + fname);
                            using (SqlConnection conr = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\Software_dev_tool_pro_atp2_new\Road\RoadAccident.mdf;Integrated Security=True;Connect Timeout=30"))
                            {
                                conr.Open();
                                SqlCommand cmdr = new SqlCommand("Insert into Images values('" + vehicleNum + "','" + accLocation + "','" + txtEvidences1.FileName + "','" + uID + "')", conr);
                                int m = cmdr.ExecuteNonQuery();
                                if (m > 0)
                                {
                                    Response.Write("<script>alert('File has been uploaded successfully')</script>");
                                }

                            }

                        }
                        else
                        {
                            lblmsg.Text = "File has to be less than 100kb";
                        }


                    }
                    else
                    {
                        lblmsg.Text = "only jpg,jpeg,png files are accepted !";

                    }

                }

                catch (Exception ex)
                {
                    lblmsg.Text = "couldn't upload the file error:" + ex.Message;
                }
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleyeUserInformation.aspx");
        }
    }
}