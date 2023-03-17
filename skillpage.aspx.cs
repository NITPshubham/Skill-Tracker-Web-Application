using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Skill_Tracker
{
    public partial class skillpage : System.Web.UI.Page
    {
        //Connection string to Database
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = Request.QueryString["cat"];

            //PostBack Method
            if (!Page.IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Write("<script> alert('Your Session has been Expired...'); window.location.href = 'loginpage.aspx' </script>");
                    Response.Redirect("loginpage.aspx");
                }
                else
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();

                    Response.ClearHeaders();
                    Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
                    Response.AddHeader("Pragma", "no-cache");
                }
            }
            Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();

            Response.ClearHeaders();
            Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");
            Response.AddHeader("Pragma", "no-cache");

        }

        //Submit skills Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            //addSkills();
            if (checkUserSkillExists())
            {
                updateSkills();
            }
            else
            {
                addSkills();
            }
        }

        //Check User Skill Already Exist
        bool checkUserSkillExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                //Update Query For Expertise
                SqlCommand cmd = new SqlCommand("SELECT * from User_Dom_Skills where user_id='" + Session["username"].ToString() + "'; AND domain_name ='" + Label6.Text.ToString() + "'; ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        //Submit Skills
        void addSkills()
        {
            
            
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }

            foreach (DataListItem dli in DataList1.Items)
            {
                //Employee response
                RadioButton rab1 = dli.FindControl("RB1") as RadioButton;
                RadioButton rab2 = dli.FindControl("RB2") as RadioButton;
                RadioButton rab3 = dli.FindControl("RB3") as RadioButton;
                RadioButton rab4 = dli.FindControl("RB4") as RadioButton;

                //If RadioButton1 Selected 
                if (rab1.Checked)
                {

                    Label Lb2 = (Label)dli.FindControl("Label2");
                    string option1 = Lb2.Text;
                    DataTable dt2 = new DataTable();
                    dt2.Columns.Add("abc");
                    var dr1 = dt2.NewRow();
                    dr1["abc"] = option1;
                    dt2.Rows.Add(dr1);

                    Label lbskill = (Label)dli.FindControl("Label1");
                    string skill1 = lbskill.Text;
                    DataTable dt1 = new DataTable();
                    dt1.Columns.Add("abc");
                    var dr2 = dt1.NewRow();
                    dr1["abc"] = skill1;
                    dt1.Rows.Add(dr2);

                    SqlCommand cmd = new SqlCommand("INSERT INTO User_Dom_Skills(user_id,domain_name,skill_name,expertise) values(@user_id,@domain_name,@skill_name,@expertise)", con);
                    cmd.Parameters.AddWithValue("@expertise", option1);
                    cmd.Parameters.AddWithValue("@user_id", Session["username"].ToString());
                    cmd.Parameters.AddWithValue("@domain_name", Label6.Text.ToString());
                    cmd.Parameters.AddWithValue("@skill_name", skill1);
                    cmd.ExecuteNonQuery();
                }

                //If RadioButton2 Selected
                else if (rab2.Checked)
                {
                    Label Lb3 = (Label)dli.FindControl("Label3");
                    string option2 = Lb3.Text;
                    DataTable dt2 = new DataTable();
                    dt2.Columns.Add("abc");
                    var dr1 = dt2.NewRow();
                    dr1["abc"] = option2;
                    dt2.Rows.Add(dr1);

                    Label lbskill = (Label)dli.FindControl("Label1");
                    string skill1 = lbskill.Text;
                    DataTable dt1 = new DataTable();
                    dt1.Columns.Add("abc");
                    var dr2 = dt1.NewRow();
                    dr1["abc"] = skill1;
                    dt1.Rows.Add(dr2);

                    SqlCommand cmd = new SqlCommand("INSERT INTO User_Dom_Skills(user_id,domain_name,skill_name,expertise) values(@user_id,@domain_name,@skill_name,@expertise)", con);
                    cmd.Parameters.AddWithValue("@expertise", option2);
                    cmd.Parameters.AddWithValue("@user_id", Session["username"].ToString());
                    cmd.Parameters.AddWithValue("@domain_name", Label6.Text.ToString());
                    cmd.Parameters.AddWithValue("@skill_name", skill1);
                    cmd.ExecuteNonQuery();
                }

                //If RadioButton3 Selected
                if (rab3.Checked)
                {
                    Label Lb4 = (Label)dli.FindControl("Label4");
                    string option3 = Lb4.Text;
                    DataTable dt2 = new DataTable();
                    dt2.Columns.Add("abc");
                    var dr1 = dt2.NewRow();
                    dr1["abc"] = option3;
                    dt2.Rows.Add(dr1);

                    Label lbskill = (Label)dli.FindControl("Label1");
                    string skill1 = lbskill.Text;
                    DataTable dt1 = new DataTable();
                    dt1.Columns.Add("abc");
                    var dr2 = dt1.NewRow();
                    dr1["abc"] = skill1;
                    dt1.Rows.Add(dr2);

                    SqlCommand cmd = new SqlCommand("INSERT INTO User_Dom_Skills(user_id,domain_name,skill_name,expertise) values(@user_id,@domain_name,@skill_name,@expertise)", con);
                    cmd.Parameters.AddWithValue("@expertise", option3);
                    cmd.Parameters.AddWithValue("@user_id", Session["username"].ToString());
                    cmd.Parameters.AddWithValue("@domain_name", Label6.Text.ToString());
                    cmd.Parameters.AddWithValue("@skill_name", skill1);
                    cmd.ExecuteNonQuery();
                }

                //If RadioButton4 Selected
                if (rab4.Checked)
                {
                    Label Lb5 = (Label)dli.FindControl("Label5");
                    string option4 = Lb5.Text;
                    DataTable dt2 = new DataTable();
                    dt2.Columns.Add("abc");
                    var dr1 = dt2.NewRow();
                    dr1["abc"] = option4;
                    dt2.Rows.Add(dr1);

                    Label lbskill = (Label)dli.FindControl("Label1");
                    string skill1 = lbskill.Text;
                    DataTable dt1 = new DataTable();
                    dt1.Columns.Add("abc");
                    var dr2 = dt1.NewRow();
                    dr1["abc"] = skill1;
                    dt1.Rows.Add(dr2);

                    SqlCommand cmd = new SqlCommand("INSERT INTO User_Dom_Skills(user_id,domain_name,skill_name,expertise) values(@user_id,@domain_name,@skill_name,@expertise)", con);
                    cmd.Parameters.AddWithValue("@expertise", option4);
                    cmd.Parameters.AddWithValue("@user_id", Session["username"].ToString());
                    cmd.Parameters.AddWithValue("@domain_name", Label6.Text.ToString());
                    cmd.Parameters.AddWithValue("@skill_name", skill1);
                    cmd.ExecuteNonQuery();
                }

            }
            Response.Write("<script>alert('Data Added Successfully'); window.location.href = 'domainpage.aspx' </script>");
            //Response.Redirect("~/domainpage.aspx");
        }


        //Update the Skills
        void updateSkills()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }

            foreach (DataListItem dli in DataList1.Items)
            {
                //Employee response

                RadioButton rab1 = dli.FindControl("RB1") as RadioButton;
                RadioButton rab2 = dli.FindControl("RB2") as RadioButton;
                RadioButton rab3 = dli.FindControl("RB3") as RadioButton;
                RadioButton rab4 = dli.FindControl("RB4") as RadioButton;
                if (rab1.Checked)
                {
                    Label Lb2 = (Label)dli.FindControl("Label2");
                    string option1 = Lb2.Text;
                    DataTable dt2 = new DataTable();
                    dt2.Columns.Add("abc");
                    var dr1 = dt2.NewRow();
                    dr1["abc"] = option1;
                    dt2.Rows.Add(dr1);

                    Label lbskill = (Label)dli.FindControl("Label1");
                    string skill1 = lbskill.Text;
                    DataTable dt1 = new DataTable();
                    dt1.Columns.Add("abc");
                    var dr2 = dt1.NewRow();
                    dr1["abc"] = skill1;
                    dt1.Rows.Add(dr2);

                    SqlCommand cmd = new SqlCommand("UPDATE User_Dom_Skills SET expertise = '@expertise' WHERE user_id = '@user_id' AND domain_name = '@domain_name' AND skill_name = '@skill_name';");
                    cmd.Parameters.AddWithValue("@expertise", option1);
                    cmd.Parameters.AddWithValue("@user_id", Session["username"].ToString());
                    cmd.Parameters.AddWithValue("@domain_name", Label6.Text.ToString());
                    cmd.Parameters.AddWithValue("@skill_name", skill1);
                    cmd.ExecuteNonQuery();
                }

                else if (rab2.Checked)
                {
                    Label Lb3 = (Label)dli.FindControl("Label3");
                    string option2 = Lb3.Text;
                    DataTable dt2 = new DataTable();
                    dt2.Columns.Add("abc");
                    var dr1 = dt2.NewRow();
                    dr1["abc"] = option2;
                    dt2.Rows.Add(dr1);

                    Label lbskill = (Label)dli.FindControl("Label1");
                    string skill1 = lbskill.Text;
                    DataTable dt1 = new DataTable();
                    dt1.Columns.Add("abc");
                    var dr2 = dt1.NewRow();
                    dr1["abc"] = skill1;
                    dt1.Rows.Add(dr2);

                    SqlCommand cmd = new SqlCommand("UPDATE User_Dom_Skills SET expertise = '@expertise' WHERE user_id = '@user_id' AND domain_name = '@domain_name' AND skill_name = '@skill_name';");
                    cmd.Parameters.AddWithValue("@expertise", option2);
                    cmd.Parameters.AddWithValue("@user_id", Session["username"].ToString());
                    cmd.Parameters.AddWithValue("@domain_name", Label6.Text.ToString());
                    cmd.Parameters.AddWithValue("@skill_name", skill1);
                    cmd.ExecuteNonQuery();
                }

                if (rab3.Checked)
                {
                    Label Lb4 = (Label)dli.FindControl("Label4");
                    string option3 = Lb4.Text;
                    DataTable dt2 = new DataTable();
                    dt2.Columns.Add("abc");
                    var dr1 = dt2.NewRow();
                    dr1["abc"] = option3;
                    dt2.Rows.Add(dr1);

                    Label lbskill = (Label)dli.FindControl("Label1");
                    string skill1 = lbskill.Text;
                    DataTable dt1 = new DataTable();
                    dt1.Columns.Add("abc");
                    var dr2 = dt1.NewRow();
                    dr1["abc"] = skill1;
                    dt1.Rows.Add(dr2);

                    SqlCommand cmd = new SqlCommand("UPDATE User_Dom_Skills SET expertise = '@expertise' WHERE user_id = '@user_id' AND domain_name = '@domain_name' AND skill_name = '@skill_name';");
                    cmd.Parameters.AddWithValue("@expertise", option3);
                    cmd.Parameters.AddWithValue("@user_id", Session["username"].ToString());
                    cmd.Parameters.AddWithValue("@domain_name", Label6.Text.ToString());
                    cmd.Parameters.AddWithValue("@skill_name", skill1);
                    cmd.ExecuteNonQuery();
                }

                if (rab4.Checked)
                {
                    Label Lb5 = (Label)dli.FindControl("Label5");
                    string option4 = Lb5.Text;
                    DataTable dt2 = new DataTable();
                    dt2.Columns.Add("abc");
                    var dr1 = dt2.NewRow();
                    dr1["abc"] = option4;
                    dt2.Rows.Add(dr1);

                    Label lbskill = (Label)dli.FindControl("Label1");
                    string skill1 = lbskill.Text;
                    DataTable dt1 = new DataTable();
                    dt1.Columns.Add("abc");
                    var dr2 = dt1.NewRow();
                    dr1["abc"] = skill1;
                    dt1.Rows.Add(dr2);

                    SqlCommand cmd = new SqlCommand("UPDATE User_Dom_Skills SET expertise = '@expertise' WHERE user_id = '@user_id' AND domain_name = '@domain_name' AND skill_name = '@skill_name';");
                    cmd.Parameters.AddWithValue("@expertise", option4);
                    cmd.Parameters.AddWithValue("@user_id", Session["username"].ToString());
                    cmd.Parameters.AddWithValue("@domain_name", Label6.Text.ToString());
                    cmd.Parameters.AddWithValue("@skill_name", skill1);
                    cmd.ExecuteNonQuery();
                }

            }
            Response.Write("<script>alert('Data Updated Successfully'); window.location.href = 'domainpage.aspx' </script>");
            //Response.Redirect("domainpage.aspx");
        }


    }

}
        
    
