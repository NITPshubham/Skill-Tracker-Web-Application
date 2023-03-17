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
    public partial class addusertype : System.Web.UI.Page
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

        //Button for Add User Type
        protected void btnAddUserType_Click(object sender, EventArgs e)
        {
            if (checkUserTypeExists())
            {
                Response.Write("<script>alert('User Type Already Exist. Try another.');</script>");
            }
            else
            {
                addUserType();
            }
        }

        //Button For Add User Type
        protected void btnDeleteUserType_Click(object sender, EventArgs e)
        {
            if (checkUserTypeExists())
            {
                deleteUserType();
            }
            else
            {
                Response.Write("<script>alert('User Type Doesn't Exist.');</script>");
            }
        }

        //Check User Type Exist or Not
        bool checkUserTypeExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query For Check User Type Exist or Not
                SqlCommand cmd = new SqlCommand("SELECT * from user_type where user_type_id='" + userTypeId.Text.Trim() + "';", con);
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

        //Code for Add User type
        void addUserType()
        {
            //Response.Write("<script>alert('Testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query for Add User type
                SqlCommand cmd = new SqlCommand("INSERT INTO user_type(user_type_id,user_type_name) values(@user_type_id,@user_type_name)", con);
                cmd.Parameters.AddWithValue("@user_type_id", userTypeId.Text.Trim());
                cmd.Parameters.AddWithValue("@user_type_name", userTypeName.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Type Added Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //Code for Delete User Type
        void deleteUserType()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query for Delete User Type
                SqlCommand cmd = new SqlCommand("DELETE from user_type WHERE user_type_id='" + userTypeId.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Type Deleted Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}