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
    public partial class adddomain : System.Web.UI.Page
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

        //Add Domain Button
        protected void btnAddDomain_Click(object sender, EventArgs e)
        {
            if (checkDomainExists())
            {
                Response.Write("<script>alert('Domain Already Exist with This Domain ID. Try another.');</script>");
            }
            else
            {
                addNewDomain();
            }
        }

        //Delete Domain Button
        protected void btnDeleteDomain_Click(object sender, EventArgs e)
        {
            if (checkDomainExists())
            {
                deleteDomain();
            }
            else
            {
                Response.Write("<script>alert('Domain Doesn't Exist. Try another.');</script>");
            }
        }

        //Check Domain Exist or Not
        bool checkDomainExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query for Check Domain Exist or Not
                SqlCommand cmd = new SqlCommand("SELECT * from domain where domain_id='" + domainId.Text.Trim() + "';", con);
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
        
        //code for Add Domain
        void addNewDomain()
        {
            //Response.Write("<script>alert('Testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query For Insert Domain
                SqlCommand cmd = new SqlCommand("INSERT INTO domain(domain_id,domain_name) values(@domain_id,@domain_name)", con);
                cmd.Parameters.AddWithValue("@domain_id", domainId.Text.Trim());
                cmd.Parameters.AddWithValue("@domain_name", domainName.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Domain Added Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //Code For Delete Domain
        void deleteDomain()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query For Delete Domain
                SqlCommand cmd = new SqlCommand("DELETE FROM domain where domain_id='"+domainId.Text+"'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Domain Deleted Successfully.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        
    }
}