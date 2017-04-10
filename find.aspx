<%@ Page Language="C#" AutoEventWireup="true" CodeFile="find.aspx.cs" Inherits="find" %>

<%@ Register src="mainbottom.ascx" tagname="mainbottom" tagprefix="uc1" %>

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

        .newStyle1
        {
        	height:32px;
        	width:32px;
        	padding:0;
        	margin:0;
        	border:0;
        }
        
        tr
        {
        	border-bottom:solid 1px #CCCCCC;
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
        .newStyle3
        {
        	float:left;
        	border:0;
        	padding:0;
        	margin-left:15px;;
        	width:32px;
        	height:32px;
        }
        .newStyle2
        {
            float: none;
            position: absolute;
            right: 10px;
            top:10px;
        }
        .style11
        {
            width: 60px;
        }
        .style12
        {
            width: 260px;
        }
        .style14
        {
            width: 67px;
            height: 58px;
        }
        .style16
        {
            width: 67px;
            height: 106px;
        }
        .style17
        {
        }
        .newStyle4
        {
        	padding:0;
            border:0;
            margin:0;
            margin-left:5px;
            height:50px;
            width:50px;
            float:left;
        }

        .style18
        {
            height: 24px;
        }
        .style19
        {
            height: 35px;
        }
        .style20
        {
            height: 33px;
        }
        .newStyle5
        {
        	border:0;
        	padding:0;
        	margin:0;
        	height:100px;
        	width:100px;
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
                            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="newStyle3" ImageUrl="~/img/photo.png"  OnClick="ImageButton2_Click1" />
                            </td>
                        </tr>
                    </table>
                
                </div>
            </div>
            <div id="middle">
                
                <asp:DataList ID="DataList1" runat="server" CssClass="newStyle6" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" GridLines="Both">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <ItemTemplate>
                        <table style="width:400px;">
                            <tr>
                                <td class="style14">
                                    <asp:Image ID="Image1" runat="server" CssClass="newStyle4" ImageUrl='<%# Eval("userimgurl") %>'/>
                                </td>
                                <td class="style15" rowspan="2">
                                    <table style="width: 100%; height: 100%;">
                                        <tr>
                                            <td class="style18"><%# Eval("username") %>
                                                </td>
                                        </tr>
                                        <tr>
                                            <td class="style20">
                                                <%# Eval("contenttext") %></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Image ID="Image2" runat="server" CssClass="newStyle5" ImageUrl='<%# Eval("contentimg") %>'/>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="style16">
                                </td>
                            </tr>
                            <tr>
                                <td class="style19">
                                    </td>
                                <td class="style19"></td>
                            </tr>
                            <tr>
                                <td class="style17">
                                </td>
                                <td class="style17" rowspan="2">
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <ItemStyle BackColor="White" ForeColor="#003399" />
                    <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                </asp:DataList>
              
            </div>
            <div id="bottom">
                <uc1:mainbottom ID="mainbottom1" runat="server" />
            </div>
        </div>
    </form>
</body>
</html>
