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
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int a;
        a = Request.QueryString["id"] == null ? 0 : int.Parse(Request.QueryString["id"].ToString());
        string connString = "Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|wechat.mdf;Integrated Security=True;User Instance=True;";
        SqlConnection conn = new SqlConnection(connString);
        string command = "select * from friends WHERE id=" + a;
        SqlDataAdapter adpter = new SqlDataAdapter(command, conn);
        DataSet ds = new DataSet();
        adpter.Fill(ds, "dt1");
        DataList1.DataSource = ds.Tables["dt1"];
        DataList1.DataBind();
        conn.Close();
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Server.Transfer("friend.aspx");
    }
}
