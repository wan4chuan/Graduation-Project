<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<jsp:useBean id="sys" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="abc" scope="page" class="com.bean.AfficheBean"/>
<jsp:useBean id="news" scope="page" class="com.bean.NewsBean"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List sysList=sys.getSiteInfo();
List affList=abc.getAllAffiche();
List newsList=news.getIndexNews();
List AllnewsList=news.getAllNews();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE><%=sysList.get(0).toString() %></TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META name="keywords" content="<%=sysList.get(2).toString() %>" />
<META name="description" content="<%=sysList.get(3).toString() %>" />

<META content="MSHTML 6.00.2900.3243" name=GENERATOR>
<LINK href="<%=basePath %>images/css.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %>images/default.css" type=text/css rel=stylesheet>
</HEAD>
<SCRIPT language=JavaScript src="<%=basePath %>images/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>images/index.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>images/calendar.js"></SCRIPT>
<%if(sysList.get(5).toString().trim().equals("open")){ %>
<SCRIPT language=JavaScript>
<!--//屏蔽出错代码
function killErr(){
	return true;
}
window.onerror=killErr;
//-->
</SCRIPT>
<SCRIPT language=JavaScript>
<!--//处理大分类一行两个小分类
function autoTable(div){
	fs=document.getElementById(div).getElementsByTagName("TABLE");
	for(var i=0;i<fs.length;i++){
		fs[i].style.width='49.5%';
		if(i%2==1){
			if (document.all) {
				fs[i].style.styleFloat="right";
			}else{
				fs[i].style.cssFloat="right;";
			}
		}else{
			if (document.all) {
				fs[i].style.styleFloat="left";
			}else{
				fs[i].style.cssFloat="left;";
			}
		}
	}
}
//-->
</SCRIPT>
<SCRIPT language=JavaScript src="images/inc.js"></SCRIPT>
<SCRIPT language=JavaScript src="images/default.js"></SCRIPT>
<SCRIPT language=JavaScript src="images/swfobject.js"></SCRIPT>
</HEAD>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
<SCRIPT language=JavaScript>
<!--//目的是为了做风格方便
document.write('<div class="wrap">');
//-->
</SCRIPT>
<TABLE id=toplogin cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TBODY>
  <TR>
    <TD vAlign=center align=left>
      <DIV class=jstime style="FLOAT: left; WIDTH: 25%">
      【<a href="login.jsp">会员登录</a>】【<a href="reg.jsp">免费注册</a>】【<a href="lost.jsp">忘记密码</a>】
      </DIV>
      <DIV class=jstime style="FLOAT: right; WIDTH: 45%; TEXT-ALIGN: right">
	  <!--****************时间日历开始****************-->
      <SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;星期'+'日一二三四五六'.charAt(new Date().getDay());",1000)</SCRIPT>
      <SPAN id=clock></SPAN>
	  <!--****************时间日历结束****************-->&nbsp;&nbsp; 
      <A href="javascript:javascript:window.external.AddFavorite('<%=basePath %>','<%=sysList.get(0).toString() %>');">加入收藏</A> 
      <A onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath %>');" href="http://localhost/#">设为首页</A> 
	  <A href="mailto:<%=sysList.get(4).toString() %>">联系站长</A> 
	  </DIV>
	</TD>
   </TR>
   </TBODY>
</TABLE>
<TABLE id=header cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
<TBODY>
  <TR>
    <TD>
      
     <DIV class=ad id=banner>
      <OBJECT codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0 
	  height=150 width=950 classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000>
	  <PARAM NAME="movie" VALUE="images/foot.swf">
	  <PARAM NAME="quality" VALUE="high">
 	  <embed src="images/foot.jpg"  width="950" height="150">
      </embed>      
      </OBJECT>
	  </DIV>
	</TD>
  </TR>
 </TBODY>
</TABLE>
<TABLE id=guide cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
<TBODY>
  <TR>
    <TD align=middle>
	<!--****************主菜单开始****************-->
	<A href="index.jsp" target="">首页</A> |
	<A href="news.jsp" target="">新闻资讯</A> |
	<A href="video.jsp" target="">在线影院</A> |
	<A href="files.jsp" target="">社区共享</A> |
	<A href="guestbook.jsp" target="">社区留言</A> |
	<A href="login.jsp" target="">会员中心</A> |
   <A href="admin/login.jsp" target="">管理登录</A> 
	<!--****************主菜单结束****************-->
	</TD>
  </TR>
</TBODY>
</TABLE>



