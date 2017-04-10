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

public partial class upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
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
                Image1.ImageUrl = "~/img/head/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/img/head/") + FileUpload1.FileName);
            }
        }
    }
}
