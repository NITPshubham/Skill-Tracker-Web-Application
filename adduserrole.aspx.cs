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
    public partial class adduserrole : System.Web.UI.Page
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

        //Add User Role Button
        protected void btnAddRole_Click(object sender, EventArgs e)
        {
            if (checkRoleExists())
            {
                Response.Write("<script>alert('Role Already Exist. Try another.');</script>");
            }
            else
            {
                addNewRole();
            }
        }

        //Delete User Role Button
        protected void btnDeleteRole_Click(object sender, EventArgs e)
        {
            if (checkRoleExists())
            {
                deleteRole();
            }
            else
            {
                Response.Write("<script>alert('Role Type Doesn't Exist.');</script>");
            }
        }

        //Check Role Exist or Not
        bool checkRoleExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query For Check Role Already Exist or Not
                SqlCommand cmd = new SqlCommand("SELECT * from role where role_id='" + roleId.Text.Trim() + "';", con);
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
                Response.Write("<script>alert('Invalid Credential');</script>");
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        //Code for Add New role
        void addNewRole()
        {
            //Response.Write("<script>alert('Testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query for Add Role
                SqlCommand cmd = new SqlCommand("INSERT INTO role(role_id,role_name) values(@role_id,@role_name)", con);
                cmd.Parameters.AddWithValue("@role_id", roleId.Text.Trim());
                cmd.Parameters.AddWithValue("@role_name", roleName.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Role Added Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Invalid Credential');</script>");
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //code for Delete Role
        void deleteRole()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query For Delete role
                SqlCommand cmd = new SqlCommand("DELETE from role WHERE role_id='" + roleId.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Role Type Deleted Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}