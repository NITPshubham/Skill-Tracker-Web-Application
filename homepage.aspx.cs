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
    public partial class homepage : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
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


                if (Session["role"].Equals("user"))
                {
                    labelUserID.Visible = true; // Print User ID
                    labelEmailID.Visible = true;
                    labelUserDepartment.Visible = true;
                    labelUserRole.Visible = true;
                    labelUserName.Visible = true;
                    labelUserID.Text = "" + Session["username"].ToString();
                    labelUserName.Text = "" + Session["fullname"].ToString();
                    labelEmailID.Text = "" + Session["email"].ToString();
                    labelUserDepartment.Text = "" + Session["department"].ToString();
                    labelUserRole.Text = "" + Session["roles"].ToString();
                }
                else
                {
                }
            
        }

       
    }
    
}