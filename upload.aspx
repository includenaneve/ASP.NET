<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload.aspx.cs" Inherits="upload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .mywindow
        {
        	border:solid 1px black;
        	box-shadow: 10px 10px 5px #888888;
        	position:relative;
            width: 600px;
            height: 400px;
            margin:100px auto;
        }
        .fileupload
        {
            position: absolute;
            top: 350px;
            left: 160px;
        }
        .uploadimg
        {
            position: absolute;
            width: 200px;
            height: 200px;
            top: 50px;
            left: 180px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="mywindow" >
    
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fileupload"  />
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        <asp:Image ID="Image1" runat="server"  CssClass="uploadimg"/>
        
   </div>
    </form>
</body>
</html>
