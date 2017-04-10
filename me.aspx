<%@ Page Language="C#" AutoEventWireup="true" CodeFile="me.aspx.cs" Inherits="mine" %>

<%@ Register src="maintop.ascx" tagname="maintop" tagprefix="uc1" %>
<%@ Register src="mainbottom.ascx" tagname="mainbottom" tagprefix="uc2" %>

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
    }
    #middle
    {
    	float:left;
    	height:500px;
    	overflow-y:auto;
    	overflow-x:hidden;
    }
        .style1
        {
            height: 58px;
            text-align: right;
        }
        .style2
        {
            height: 38px;
        }
        .style3
        {
            height: 23px;
            background-color: #CCCCCC;
        }
        .style4
        {
            height: 58px;
            width: 88px;
            font-family: 微软雅黑;
            font-size: medium;
            font-weight: bold;
        }
        .style5
        {
            height: 38px;
            width: 88px;
            font-family: 微软雅黑;
            font-size: medium;
            font-weight: bold;
        }
        .imgstyle
        {
        	padding:0;
        	margin:0;
        	width:50px;
        	height:50px;
        	float:right;
        	margin-right:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="all">
        <div id="top">
            <uc1:maintop ID="maintop1" runat="server" />
        </div>  
        <div id="middle">
        <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
                    <table style="width:400px;">
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp; 头像</td>
                            <td class="style1">
                                <asp:Image ID="Image1" runat="server" CssClass="imgstyle"  ImageUrl='<%# Eval("friendimgurl")%>'/>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;&nbsp; 昵称</td>
                            <td class="style2"><%#Eval("friendname") %></td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;&nbsp; 微信号</td>
                            <td class="style2"><%#Eval("friendnumber") %>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3" colspan="2">
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;&nbsp; 性别</td>
                            <td class="style2"><%#Eval("friendsex") %>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;&nbsp; 地区</td>
                            <td class="style2"><%#Eval("friendlocation") %>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;&nbsp; 个性签名</td>
                            <td class="style2"><%#Eval("friendsignup") %>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
        
        <div id="bottom">
            <uc2:mainbottom ID="mainbottom1" runat="server" />
        </div>
    </div>
    </form>
        
</body>
</html>
