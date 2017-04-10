<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register"  %>

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
    	outline:black solid 2px;
    }
    #middle
    {
    	float:left;
    	height:500px;
    }

        .newStyle1
        {
            
            float: left;
            width: 32px;
            height: 32px;
            margin: 20px 0 0 9px;
        }
        
        tr
        {
        	border-bottom:solid 1px #CCCCCC;
        }


        .style3
        {
            height: 50px;
            font-weight: 700;
            width: 80px;
            text-align: center;
            font-family: 微软雅黑;
        }
        .style4
        {
            height: 50px;
            width: 80px;
            font-weight: 700;
            text-align: center;
            font-family: 微软雅黑;
        }
        .style6
        {
            width: 80px;
            font-weight: 700;
            text-align: center;
            font-family: 微软雅黑;
            height: 51px;
        }
         .style9
        {
            height: 50px;
            width: 80px;
            font-weight: 700;
            text-align: center;
            font-family: 微软雅黑;
        }
        .style2
        {
            height: 50px;
            }

        .style7
        {
            height: 51px;
            width:340px;
        }
        .style8
        {
            height: 50px;
            width:340px;
        }
        .style10
        {
            height: 50px;
            width:340px;
        }

        .labelstyle
        {
           margin:auto 10px;
           height:30px;
           font-size:28px;
        }

        .uploadstyle
        {
        	position:absolute;
            height: 30px;
            left:10px;
        }

        .newStyle2
        {
            float: none;
            position: absolute;
            right: 10px;
            top:10px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="all">
            <div id="top">
                <div style="background-color: #333333; color: #FFFFFF; font-family: 微软雅黑; width: 400px; height: 60px;font-size:20px;">
                 <asp:ImageButton ID="ImageButton1" runat="server" CssClass="newStyle1" 
                        ImageUrl="~/img/return.png"  OnClick="ImageButton1_Click1" />
                <span style="float:left;margin-top:20px;margin-left:20px;">填写手机号</span>
                </div>
            </div>
            <div id="middle">
                
                <table style="width:400px; border-collapse:collapse; height: 358px; ">
                    <tr >
                        <td class="style3">
                            昵称</td>
                        <td class="style2">
                            <asp:TextBox ID="TextBoxname" runat="server" BorderStyle="None" Height="37px" 
                                Width="280px" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            国家</td>
                        <td class="style8">
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="309px">
                                <asp:ListItem Selected="True">中国</asp:ListItem>
                                <asp:ListItem>American</asp:ListItem>
                            </asp:DropDownList>
                            </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            +86</td>
                        <td class="style7">
                            <asp:TextBox ID="TextBoxnumber" runat="server" BorderStyle="None" Height="40px" 
                                Width="280px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            密码</td>
                        <td class="style10">
                            <asp:TextBox ID="TextBoxpwd" runat="server" BorderStyle="None" Height="40px" 
                                Width="280px" TextMode="Password" ></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            确认密码</td>
                        <td class="style10">
                            <asp:TextBox ID="TextBoxpwdagain" runat="server" Height="40px" Width="280px" 
                                TextMode="Password" BorderStyle="None"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server" Height="45px" Text="注册" Width="395px" 
                                style="color: #FFFFFF; background-color: #339933" onclick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="position:relative;height:70px;">
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="uploadstyle" />
                            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="newStyle2" 
                                Height="50px" Width="50px" ToolTip="点击预览图片" onclick="ImageButton2_Click1" onMouseOver="ImageButton2_Click1"/>
                        </td>
                    </tr>
                </table>
                
            </div>
        </div>
    </form>
</body>
</html>
