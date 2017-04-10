<%@ Page Language="C#" AutoEventWireup="true" CodeFile="publish.aspx.cs" Inherits="publish" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <style type="text/css">
    body
        {
        	height:100%;
        	width:100%;
        	background-image:url(./img/bg.jpg);
        	background-repeat:no-repeat;
        }
    #all
    {
    	padding:0;
    	margin:100px auto;
    	height:620px;
    	width:400px;
    	border-left:solid 1px #CCCCCC;
    	box-shadow: 10px 10px 5px black;
    	background-color:rgb(244,244,244);
    	
    }
    #all div
    {
    	width:400px;
    	z-index:1000;
    }
    
    #top
    {
        height:60px;	
        overflow:hidden;
    }
    #bottom
    {
    	height:60px;
    }
    #middle
    {
    	float:left;
    	height:500px;
    	overflow-y:auto;
    	overflow-x:hidden;
    }
        .style11
        {
            width: 60px;
        }
        .style12
        {
            width: 260px;
        }
        .style13
        {
            height: 129px;
        }
        #TextBox1
        {
        	border:0;
            width: 394px;
            height: 100px;
            overflow:hidden;
            overflow-y:hidden;
            outline:none;
            
        }

        .style14
        {
            height: 105px;
        }
        .lable
        {
        	float:left;
        	margin-left:10px;
        	overflow:hidden;
        }

        .fileupload
        {
        	float:left;
        }

        .imgimg
        {
        	height:100px;
        	width:100px;
        	border:0;
        	padding:0;
        	margin:0;
        	float:left;
        	margin-left:30px;
        }

        .botton
        {
        	border-radius:5px;
        	color:White;
        	font-family:微软雅黑;
            font-weight: 700;
            width:50px;
           float:right;
           margin-right:5px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="all">
            <div id="top">
                <div style="background-color: #333333; color: #FFFFFF; font-family: 微软雅黑; width: 400px; height: 60px;font-size:20px;">
                
                    <table style="width: 400px; height: 60px;">
                        <tr>
                            <td class="style11">
                            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="newStyle1" ImageUrl="~/img/return.png"  OnClick="ImageButton1_Click1" />
                            </td>
                            <td class="style12">
                                朋友圈</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" BackColor="Lime" CssClass="botton" 
                                    Text="发送" onclick="Button1_Click" Height="36px" Width="83px" 
                                    ToolTip="点击预览图片" />
                            </td>
                        </tr>
                    </table>
                
                </div>
            </div>
            <div id="middle">


                <table style="width:100%;border-collapse:collapse;background-color:White;box-shadow: 0px 2px 10px #888888;">
                    <tr style="border-bottom:solid 1px #CCCCCC">
                        <td class="style13">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td class="style14">
                            <asp:ImageButton ID="ImageButton2"  CssClass="imgimg" runat="server" 
                                onclick="ImageButton2_Click" />
                            </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="fileupload" />
                            <asp:Label ID="Label1" runat="server" CssClass="lable" 
                                Width="130px"></asp:Label>
                        </td>
                    </tr>
                </table>


            </div>
        </div>
    </form>
</body>
</html>
