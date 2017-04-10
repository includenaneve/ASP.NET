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

public partial class friend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connString = "Data Source=.\\SQLExpress;AttachDbFilename=|DataDirectory|wechat.mdf;Integrated Security=True;User Instance=True;";
        SqlConnection conn = new SqlConnection(connString);
        string strSelect = "select * from friends WHERE usernumber=" + "'" + Session["usernumber"]+ "'" ;
        SqlDataAdapter adpter = new SqlDataAdapter(strSelect, conn);
        DataSet ds = new DataSet();
        adpter.Fill(ds, "dt1");
        DataList1.DataSource = ds.Tables["dt1"];
        DataList1.DataBind();
        conn.Close();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Server.Transfer("chat.aspx");
    }
}
