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
    public partial class signuppage : System.Web.UI.Page
    {
        //Connection String to Database
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //Signup button click event
        protected void signUpBtn_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {
                Response.Write("<script>alert('User Aready Exist with This USER ID. Try another.');</script>");
            }
            else
            {
                signUpNewUser();
            }
        }

        //user defined method
        //Check User Exist or Not
        bool checkUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query to Check User Exist or Not
                SqlCommand cmd = new SqlCommand("SELECT * from users where user_id='" + signUpId.Text.Trim() + "';", con);
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

        //Code for SignUp New User
        void signUpNewUser()
        {
            //Response.Write("<script>alert('Testing');</script>");

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                //Query For Insert User Data
                SqlCommand cmd = new SqlCommand("INSERT INTO users(user_id,name,email,mobile,type,dept,role,password,image) values(@user_id,@name,@email,@mobile,@type,@dept,@role,@password,@image)", con);
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@user_id", signUpId.Text.Trim());
                cmd.Parameters.AddWithValue("@name", signUpName.Text.Trim());
                cmd.Parameters.AddWithValue("@email", signUpEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@mobile", signUpMobile.Text.Trim());
                cmd.Parameters.AddWithValue("@type", signUpUserTypeDropDownList.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@dept", signUpDepartmentDropDownList.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@role", signUpRoleTypeDropDownList.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@password", signUpPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@image", signUpImage.FileName);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to Login Page to Login'); window.location.href = 'loginpage.aspx' </script></script>");
                //Response.Redirect("loginpage.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


    }
}