using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Skill_Tracker
{
    public partial class forgotpasswordpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //Forgot Password Button
        protected void btnSubmitForgotpassword_Click(object sender, EventArgs e)
        {
            //Connection String to Database
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            string query = "select email, password from users where email=@email";
            SqlCommand sqlcomm = new SqlCommand(query, con);
            sqlcomm.Parameters.AddWithValue("@email", txtEmailForgotPassword.Text.Trim());
            con.Open();
            SqlDataReader sdr = sqlcomm.ExecuteReader();

            if (sdr.Read())
            {
                string Email = sdr["email"].ToString();
                string Password = sdr["password"].ToString();

                MailMessage mm = new MailMessage("bhavyap923@gmail.com", txtEmailForgotPassword.Text);
                mm.Subject = "Your Password !";
                mm.Body = string.Format("Hello : <h1>{0}</h1> is Your Email ID <br/> Your Password is <h1>{1}</h1>", Email, Password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "bhavyap923@gmail.com";
                nc.Password = "gqfwsrdmarnyddca";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(mm);
                LabMsg.Text = "Your Password has been sent to " + txtEmailForgotPassword.Text;
                //LabMsg.ForeColor = ConsoleColor.DarkGreen;
            }
            else
            {
                LabMsg.Text = txtEmailForgotPassword.Text + " - This Email ID Is Not Exist.";
            }
        }
    }
}