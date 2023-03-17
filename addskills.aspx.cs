using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Skill_Tracker
{
    public partial class addskills : System.Web.UI.Page
    {
        //Connection string to Database
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //PostBack Method
            if (!Page.IsPostBack)
            {
                if (Session["username"] == null)
                {
                    Response.Write("<script> alert('Your Session has been Expired...'); window.location.href = 'adminloginpage.aspx' </script>");
                    Response.Redirect("adminloginpage.aspx");
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

        //Add Skill Button
        protected void btnAddSkill_Click(object sender, EventArgs e)
        {
            if (checkSkillExists())
            {
                Response.Write("<script>alert('Skill Already Exist. Try another.');</script>");
            }
            else
            {
                addNewSkill();
            }
        }

        //Delete Skill Button
        protected void btnDeleteSkill_Click(object sender, EventArgs e)
        {
            if (checkSkillExists())
            {
                deleteSkill();
            }
            else
            {
                Response.Write("<script>alert('Skill Doesn't Exist.');</script>");
            }
        }

        //Check Skill Exist or Not
        bool checkSkillExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query For Skills Exist or Not
                SqlCommand cmd = new SqlCommand("SELECT * from skill where skill_id='" + skillId.Text.Trim() + "';", con);
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

        //Code for Add Skills
        void addNewSkill()
        {
            //Response.Write("<script>alert('Testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //Query For Insert Skills
                SqlCommand cmd = new SqlCommand("INSERT INTO skill(skill_id,skill_name,domain_name) values(@skill_id,@skill_name,@domain_name)", con);
                cmd.Parameters.AddWithValue("@skill_id", skillId.Text.Trim());
                cmd.Parameters.AddWithValue("@skill_name", skillName.Text.Trim());
                cmd.Parameters.AddWithValue("@domain_name", skillDomainName.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Skill Added Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //Code For Delete Skills
        void deleteSkill()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query For Delete Skills
                SqlCommand cmd = new SqlCommand("DELETE from skill WHERE skill_id='" + skillId.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Skill Deleted Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}