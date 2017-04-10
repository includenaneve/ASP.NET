<%@ Page Language="C#" AutoEventWireup="true" CodeFile="friend.aspx.cs" Inherits="friend" %>

<%@ Register src="maintop.ascx" tagname="maintop" tagprefix="uc1" %>
<%@ Register src="mainbottom.ascx" tagname="mainbottom" tagprefix="uc2" %>

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
    	overflow-y:scroll;
    	overflow-x:hidden;
    }
        .style1
        {
            width: 79px;
        }
        .newStyle1
        {
        	border:0;
        	padding:0;
        	margin:0;
        	margin-left:20px;
        }
        .style2
        {
            height: 18px;
        }
        .linkbotton
        {
        	width:400px;
        	text-decoration:none;
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
            <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                GridLines="Both" Width="397px" 
                onselectedindexchanged="DataList1_SelectedIndexChanged">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <ItemStyle BackColor="White" ForeColor="#330099" />
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="Linkbotton" PostBackUrl='<%# "detail.aspx?id="+Eval("id") %>'>
                    <table style="width:100%;">
                        <tr>
                            <td class="style1" rowspan="3">
                                <asp:Image ID="Image1" runat="server" CssClass="newStyle1" Height="48px" 
                                    Width="50px" ImageUrl='<%# Eval("friendimgurl")%>'/>
                            </td>
                            <td class="style2">
                                </td>
                            <td class="style2">
                                
                                </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="newStyle2">
                               <%# Eval("friendname")%></td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    </asp:LinkButton>

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