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
public partial class publish : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Server.Transfer("find.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strConn = "Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|wechat.mdf;Integrated Security=True;User Instance=True;";
        SqlConnection conn = new SqlConnection(strConn);
        string strfind = "select * from userlogin where usernumber=" + "'" + Session["usernumber"]+"'";
        SqlCommand command = new SqlCommand(strfind, conn);
       conn.Open();
        SqlDataReader dr = command.ExecuteReader();
        dr.Read();
        string strname = dr["username"].ToString();
        string strimgurl = dr["userimgurl"].ToString();
        dr.Close();
        string strInsertUser = "INSERT INTO article (username, usernumber, userimgurl,publishtime,contentimg,contenttext) VALUES (@name,@number,@imgurl, '" + DateTime.Now + "' , @contentimg,@contenttext)";
        command.CommandText = strInsertUser;
        command.Parameters.AddWithValue("@name", strname);
        command.Parameters.AddWithValue("@number", Session["usernumber"]);
        command.Parameters.AddWithValue("@imgurl",strimgurl);
        command.Parameters.AddWithValue("@contentimg", ImageButton2.ImageUrl);
        command.Parameters.AddWithValue("@contenttext",TextBox1.Text);
        command.ExecuteNonQuery();
        conn.Close();
        Server.Transfer("find.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
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
                ImageButton2.ImageUrl = "~/img/head/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/img/head/") + FileUpload1.FileName);
            }
        }
    }
}
