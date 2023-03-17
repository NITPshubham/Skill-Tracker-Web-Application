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
    public partial class profilepage : System.Web.UI.Page
    {
        static String imagelink;

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
                TextBox1.Visible = true; // Print User ID

                TextBox1.Text = "" + Session["username"].ToString();

            }
            else
            {
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String imagelink1;
            String mycon = "Data Source=LAPTOP-O1NVOK6V\\SQLEXPRESS; Initial Catalog=db_skill; Integrated Security=True";
            String myquery = "Select * from users where user_id=" + TextBox1.Text.ToString();
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label8.Text = "Particular User-ID Found";
                TextBox2.Text = ds.Tables[0].Rows[0]["name"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["email"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["mobile"].ToString();
                DropDownList3.SelectedItem.Value = ds.Tables[0].Rows[0]["type"].ToString();
                DropDownList1.SelectedItem.Value = ds.Tables[0].Rows[0]["dept"].ToString();
                DropDownList2.SelectedItem.Value = ds.Tables[0].Rows[0]["role"].ToString();
                imagelink1 = ds.Tables[0].Rows[0]["image"].ToString();
                Image1.ImageUrl = imagelink1 + "?n=" + DateTime.Now.Second.ToString();
            }
            else
            {
                //Label8.Text = "Particular User-ID Not Found";
            }
            con.Close();
        }
        private Boolean uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUpload1.HasFile == true)
            {
                String contenttype = FileUpload1.PostedFile.ContentType;
                if (contenttype == "image/jpeg")
                {
                    int filesize;
                    filesize = FileUpload1.PostedFile.ContentLength;

                    if (filesize <= 9120000)
                    {
                        System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                        int height = img.Height;
                        int width = img.Width;
                        if (height == 200 && width == 200)
                        {
                            FileUpload1.SaveAs(Server.MapPath("~/ProfileImage/") + TextBox1.Text + ".jpg");
                            Image1.ImageUrl = "~/ProfileImage/" + TextBox1.Text + ".jpg";
                            imagelink = "ProfileImage/" + TextBox1.Text + ".jpg";
                            imagesaved = true;
                        }
                        else
                        {
                            Label9.Text = "Kindly Upload JPEG Image in Proper Dimensions 200 x 200";
                        }
                    }
                    else
                    {
                        Label9.Text = "File Size exceeds 50 KB - Please Upload File Size Maximum 50 KB";
                    }
                }
                else
                {
                    Label9.Text = "Only JPEG/JPG Image File Acceptable - Please Upload Image File Again";
                }
            }
            else
            {
                Label9.Text = "You have not selected any file - Browse and Select File First";
            }
            return imagesaved;
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile == true)
            {
                if (uploadimage() == true)
                {
                    String mycon = "Data Source=LAPTOP-O1NVOK6V\\SQLEXPRESS; Initial Catalog=db_skill; Integrated Security=True";
                    String updatedata = "Update users set name='" + TextBox2.Text + "', email='" + TextBox3.Text + "', mobile='" + TextBox4.Text + "', type='" + DropDownList3.SelectedItem.Value + "', dept='" + DropDownList1.SelectedItem.Value + "', role='" + DropDownList2.SelectedItem.Value + "', image='" + imagelink + "' where user_id=" + TextBox1.Text;
                    SqlConnection con = new SqlConnection(mycon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = updatedata;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Record Has Been Updated Successfully');</script>");

                    //Label9.Text = "Record Has Been Updated Successfully";
                }
            }
            else
            {
                String mycon = "Data Source=LAPTOP-O1NVOK6V\\SQLEXPRESS; Initial Catalog=db_skill; Integrated Security=True";
                String updatedata = "Update users set name='" + TextBox2.Text + "', email='" + TextBox3.Text + "', mobile='" + TextBox4.Text
                    + "', type='" + DropDownList3.SelectedItem.Value + "', dept='" + DropDownList1.SelectedItem.Value + "', role='" + DropDownList2.SelectedItem.Value + "'where user_id=" + TextBox1.Text;
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = updatedata;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Record Has Been Updated Successfully');</script>");
                //Label9.Text = "Record Has Been Updated Successfully";
            }
        }
    }
}