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
    public partial class addadminpage : System.Web.UI.Page
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

        //Add Admin Button
        protected void btnAddAdmin_Click(object sender, EventArgs e)
        {
            if (checkAdminExists())
            {
                Response.Write("<script>alert('Admin Already Exist. Try another.');</script>");
            }
            else
            {
                addNewAdmin();
            }
        }

        //Delete Admin Button
        protected void btnDeleteAdmin_Click(object sender, EventArgs e)
        {
            if (checkAdminExists())
            {
                deleteAdmin();
            }
            else
            {
                Response.Write("<script>alert('Admin Doesn't Exist.');</script>");
            }
        }

        //Check Admin Exist or Not
        bool checkAdminExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query For Admin Exist or Not
                SqlCommand cmd = new SqlCommand("SELECT * from admininfo where admin_id='" + adminId.Text.Trim() + "';", con);
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

        //Code for Add Admin
        void addNewAdmin()
        {
            //Response.Write("<script>alert('Testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query For Insert Admin
                SqlCommand cmd = new SqlCommand("INSERT INTO admininfo(admin_id,password,name) values(@admin_id,@password,@name)", con);
                cmd.Parameters.AddWithValue("@admin_id", adminId.Text.Trim());
                cmd.Parameters.AddWithValue("@password", adminPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@name", adminName.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Admin Added Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //Code For Delete Admin
        void deleteAdmin()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query For Delete Admin
                SqlCommand cmd = new SqlCommand("DELETE from admininfo WHERE admin_id='" + adminId.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Admin Deleted Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}