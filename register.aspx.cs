using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            //获取上传文件的后缀
            string filehouzui = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            string[] imghouzui = { ".gif", ".jpg", ".jpge", ".bmp", ".png" };
            bool fileisok = false;
            for (int i = 0; i < imghouzui.Length; i++)
            {
                if (filehouzui == imghouzui[i])
                {
                    fileisok = true;
                    break;
                }
            }
            if (fileisok)
            {
               
                FileUpload1.SaveAs(Server.MapPath("~/img/head/") + FileUpload1.FileName);
                ImageButton2.ImageUrl = "~/img/head/" + FileUpload1.FileName;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            string strCheckUser = "SELECT * FROM userlogin  WHERE usernumber =@number";
            string strInsertUser = "INSERT INTO userlogin (username, usernumber, userpwd, userimgurl) VALUES (@name,@number,@password,@imgurl)";
            string strConn = "Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|wechat.mdf;Integrated Security=True;User Instance=True;";
            SqlConnection conn = new SqlConnection(strConn);
            SqlCommand command = new SqlCommand(strCheckUser, conn);
            command.Parameters.AddWithValue("@name", TextBoxname.Text.Trim());
            command.Parameters.AddWithValue("@number", TextBoxnumber.Text.Trim());
            command.Parameters.AddWithValue("@password", TextBoxpwd.Text.Trim());
            command.Parameters.AddWithValue("@imgurl", ImageButton2.ImageUrl);
            conn.Open();
            SqlDataReader dr = command.ExecuteReader();
            if (TextBoxpwd.Text  != TextBoxpwdagain.Text)
            {
                this.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('注册失败,两次密码不相同！');</script>");
            }
            if (dr.Read())
            {
                conn.Close();
                this.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('注册失败,已有该用户名！');</script>");
            }
            else
            {
                dr.Close();
                command.CommandText = strInsertUser;
                command.ExecuteNonQuery();
                conn.Close();
                //this.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('注册成功！');</script>");
                Response.Write("<script>alert('注册成功！');</script>");
                Server.Transfer("login.aspx");
            }
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Server.Transfer("login.aspx");
    }
}
