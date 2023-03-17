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
    public partial class adddepartment : System.Web.UI.Page
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

        //Add Department Button
        protected void btnAddDept_Click(object sender, EventArgs e)
        {
            if (checkDepartmentExists())
            {
                Response.Write("<script>alert('Department Already Exist. Try another.');</script>");
            }
            else
            {
                addNewDepartment();
            }
        }

        //Delete Department Button 
        protected void btnDeleteDept_Click(object sender, EventArgs e)
        {
            if (checkDepartmentExists())
            {
                deleteDepartment();
            }
            else
            {
                Response.Write("<script>alert('Department Doesn't Exist.');</script>");
            }
        }

        //Check Department Exist or Not
        bool checkDepartmentExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //Query for Check department Exist or Not
                SqlCommand cmd = new SqlCommand("SELECT * from department where department_id='" + deptId.Text.Trim() + "';", con);
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

        //Code for ADdd Department
        void addNewDepartment()
        {
            //Response.Write("<script>alert('Testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query For Add Department
                SqlCommand cmd = new SqlCommand("INSERT INTO department(department_id,department_name) values(@department_id,@department_name)", con);
                cmd.Parameters.AddWithValue("@department_id", deptId.Text.Trim());
                cmd.Parameters.AddWithValue("@department_name", deptName.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Department Added Successfully.');</script>");
                
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //Code For Delete Department
        void deleteDepartment()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query for Delete Department
                SqlCommand cmd = new SqlCommand("DELETE from department WHERE department_id='" + deptId.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Department Deleted Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}