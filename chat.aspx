<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chat.aspx.cs" Inherits="chat" %>

<%@ Register src="maintop.ascx" tagname="maintop" tagprefix="uc1" %>
<%@ Register src="mainbottom.ascx" tagname="mainbottom" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
        border:solid 1px #CCCCCC;
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
        	height:30px;
            width: 161px;
        }
        .style2
        {
        	width:60px;
        	height:60px;
        }

        .newStyle1
        {
        	border:0;
        	margin:auto;
        	padding:0;
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
                
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" 
                RepeatColumns="1" Height="60px" 
                Width="398px" onselectedindexchanged="DataList1_SelectedIndexChanged">
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <AlternatingItemStyle BackColor="White" />
                <ItemStyle BackColor="#E3EAEB" />
                <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table style="width:100%; height: 60px;">
                        <tr>
                            <td class="style2" rowspan="2">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("dialogimgurl")%>' 
                                    Height="50px"  Width="50px" CssClass="newStyle1"  />
                            </td>
                            <td class="style1"><%# Eval("dialogname")%></td>
                            <td rowspan="2" style="text-align: right"><%# Eval("dialogtime")%><br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style1"><%# Eval("dialogtips")%></td>
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
