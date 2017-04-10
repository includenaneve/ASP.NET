<%@ Control Language="C#" AutoEventWireup="true" CodeFile="mainbottom.ascx.cs" Inherits="mainbottom" %>
<style type="text/css">
    *{margin:0;padding:0;}
 #mainbox
{
	border:solid 1px black;
    height:47px;
    width:400px;	
    background-color:White;
}
a
{
	background-color:White;
	text-decoration:none;
	float:left;
	width:100px;
	height:60px;
}
a:hover
{
	background-color:rgba(0,255,0,0.4);
}
img
{
	float:left;
	margin-left:40px;
	margin-top:3px;
}
p
{
	float:left;
	margin-top:5px;
	margin-left:30px;
	text-align:center;
    height:12px;
    width:40px;
	font-size:12px;
	font-family:@微软雅黑;
	color:#8a8a8a;
}
</style>

<div id="mainbox">
<a id="dialog" href="chat.aspx">
    <img alt="" src="img/dialog.png" style="width: 20px; height: 20px" />
    <p>&nbsp;微信</p>
</a>
<a id="friend" href="friend.aspx">
    <img alt="" src="img/friend.png" style="width: 20px; height: 20px" />
    <p>通讯录</p>
</a>
<a id="find" href="find.aspx">
    <img alt="" src="img/find.png" style="width: 20px; height: 20px" />
    <p>发现</p>
</a>
<a id="me" href="me.aspx">
    <img alt="" src="img/me.png" style="width: 20px; height: 20px" />
    <p>我</p>
</a>
</div>
