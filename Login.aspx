<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    	background-color:White;
    	
    }
    #all div
    {
    	width:400px;
    }
    
    #top
    {
        height:60px;	
    }
    #bottom
    {
    	height:60px;
    	outline:black solid 2px;
    }
    #middle
    {
    	float:left;
    	height:500px;
    }
    
        .style3
        {
            height: 46px;
            text-align: left;
        }
        .style4
        {
            height: 49px;
        }
        .style5
        {
            height: 56px;
        }
        .style6
        {
            height: 46px;
            width: 74px;
            text-align: center;
        }
        .style7
        {
            height: 49px;
            width: 74px;
            text-align: center;
        }
    
        .style8
        {
            height: 61px;
        }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="all">
            <div id="top">
                <div style="background-color: #333333; color: #FFFFFF; font-family: 微软雅黑; width: 400px; height: 60px;font-size:20px;">
                <span style="float:left;margin-top:20px;margin-left:20px;">登陆微信</span></div>
            </div>
            <div id="middle">
                <table style="width: 100%; height: 556px;">
                    <tr>
                        <td class="style6">
                            帐号</td>
                        <td class="style3">
                            <asp:TextBox ID="wechatnumber" runat="server" Height="33px"  style="margin-top: 0px" Width="236px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style7">
                            密码</td>
                        <td class="style4">
                            <asp:TextBox ID="userpwd" runat="server" Height="36px" TextMode="Password" 
                                Width="236px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" colspan="2">
                            <asp:Button ID="Button1" runat="server" Height="45px" Text="登录" Width="395px" 
                                onclick="Button1_Click" 
                                style="color: #FFFFFF; background-color: #339933" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="style8">
                            <asp:Button ID="Button2" runat="server" BackColor="White" Height="44px" 
                                onclick="Button2_Click" Text="注册" Width="394px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
