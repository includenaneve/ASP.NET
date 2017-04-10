<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="_Default" %>

<%@ Register src="maintop.ascx" tagname="maintop" tagprefix="uc2" %>
<%@ Register src="mainbottom.ascx" tagname="mainbottom" tagprefix="uc3" %>

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
    	background-color:White;
    	padding:0;
    	margin:0 auto;
    	height:620px;
    	width:400px;
    	border-left:solid 1px #CCCCCC;
    	box-shadow: 10px 10px 5px black;
    	
    }
    #all div
    {
    	width:400px;
            text-align: center;
     }
    #top
    {
        height:60px;	
    }
    #bottom
    {
    	background-color:White;
    	height:60px;
        border-top:solid 1px black;
    }
    #middle
    {
    	float:left;
    	height:500px;
    	overflow-y:scroll;
    	overflow-x:hidden;
    	background-color:White;
    }
        .style1
        {
        }
        .style2
        {
        	height:40px;
            width: 80px;
            font-family: 微软雅黑;
            font-weight: 700;
            text-align: center;
            font-size: medium;
        }
        .style3
        {
        	font-size:xx-small;
            height: 20px;
            font-family: 微软雅黑;
            color: #CCCCCC;
            font-weight: 700;
        }
        .style4
        {
            height: 30px;
            font-family: 微软雅黑;
            font-weight: 700;
            font-size: small;
        }
        .newStyle1
        {
        	padding:0;
        	margin:0;
        	border:0;
        }
        .newStyle0
        {
            
            float: left;
            width: 32px;
            height: 32px;
            margin: 20px 0 0 9px;
        }
        table
        {
        	background-color:White;
        	border-collapse:collapse;
        }
        .newStyle2
        {
            margin-top: 20px;
        }
    </style>
</head>
<body style="font-family: 微软雅黑">
    <form id="form1" runat="server">
    
    <div id="all">
        <div id="top">
                            <div style="background-color: #333333; color: #FFFFFF; font-family: 微软雅黑; width: 400px; height: 60px;font-size:20px;">
                 <asp:ImageButton ID="ImageButton1" runat="server" CssClass="newStyle0" 
                        ImageUrl="~/img/return.png" onclick="ImageButton1_Click1"  />
                <span style="float:left;margin-top:20px;margin-left:20px;">详细资料</span>
                </div>
        </div>
        <div id="middle">
                
                
            <asp:DataList ID="DataList1" runat="server" Width="384px">
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td colspan="2" style="background-color: #CCCCCC">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2" rowspan="2">
                                <asp:Image ID="Image1" runat="server" CssClass="newStyle1" Height="50px" Width="50px"  ImageUrl='<%#Eval("friendimgurl") %>'/>
                            </td>
                            <td class="style4"><%#Eval("friendname") %></td>
                        </tr>
                        <tr>
                            <td class="style3"><%#Eval("friendnumber") %></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="background-color: #CCCCCC">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                标签</td>
                            <td style="font-size: small"><%#Eval("friendflag") %></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="background-color: #CCCCCC">
                                &nbsp;</td>
                        </tr>
                        <tr >
                            <td class="style2">
                                地区</td>
                            <td style="font-size: small">
                               <%#Eval("friendlocation") %></td>
                        </tr>
                        <tr >
                            <td class="style2">
                                个人相册</td>
                            <td style="text-align: left">
                                <asp:Image ID="Image2" runat="server" Height="50px" Width="50px"  ImageUrl="~/img/head/head7.jpg"/>
                                <asp:Image ID="Image3" runat="server" Height="50px" Width="50px" ImageUrl="~/img/head/head6.jpeg"/>
                                <asp:Image ID="Image4" runat="server" Height="50px" Width="50px" ImageUrl="~/img/head/head3.jpeg"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                来源</td>
                            <td>
                                <%#Eval("friendsource") %></td>
                        </tr>
                        <tr>
                            <td colspan="2" style="background-color: #CCCCCC">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style1" colspan="2">
                                <div>
                                    <asp:Button ID="Button1" runat="server" CssClass="newStyle2" Height="40px" 
                                        style="font-family: 微软雅黑; font-weight: 700; font-size: medium; color: #FFFFFF; background-color: #00CC00" 
                                        Text="发消息" Width="311px" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
                
                
        </div>
        <div id="bottom">
           
        </div>
    
    </div>
    </form>
        
</body>
</html>