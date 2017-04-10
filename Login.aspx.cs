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

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strnumber = wechatnumber.Text;
        string strPwd = userpwd.Text;
        string strConn ="Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|wechat.mdf;Integrated Security=True;User Instance=True;";
        SqlConnection conn = new SqlConnection(strConn);
        string strSelect = "SELECT * FROM userlogin WHERE usernumber =@usernumber and userpwd =@password";
        SqlCommand command = new SqlCommand(strSelect,conn);
        command.Parameters.AddWithValue("@usernumber",strnumber);
        command.Parameters.AddWithValue("@password",strPwd);
        conn.Open();
        SqlDataReader dr = command.ExecuteReader();
        if (dr.Read())
        {
            Session["usernumber"] = strnumber;
            Server.Transfer("chat.aspx");
        }
        else
        {
            Session["usernumber"] = "";
            this.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>alert('登录失败，无此用户名或密码不正确！');</script>");
        }
        conn.Close(); 

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("register.aspx");
    }
}
