<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="com.fredck.FCKeditor.*" %> 
<%@ taglib uri="/WEB-INF/FCKeditor.tld" prefix="FCK" %> 
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="newsb" scope="page" class="com.bean.NewsBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>��̨������</TITLE>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="<%=path %>FCKeditor/fckeditor.js"></script> 
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<script type="text/javascript">
function sub()
{

	if(document.form1.title.value.replace(/\s+$|^\s+/g,"").length<=0||document.form1.chandi.value.replace(/\s+$|^\s+/g,"").length<=0
	||document.form1.daoyan.value.replace(/\s+$|^\s+/g,"").length<=0||document.form1.yanyuan.value.replace(/\s+$|^\s+/g,"").length<=0
	||document.form1.pianchang.value.replace(/\s+$|^\s+/g,"").length<=0||document.form1.url.value.replace(/\s+$|^\s+/g,"").length<=0
	||document.form1.pic.value.replace(/\s+$|^\s+/g,"").length<=0)
	{
		alert("������Ŀ������д��");
		document.form1.title.focus();
		return false;
	}
	if(document.form1.pic.value.replace(/\s+$|^\s+/g,"").length>0)
	{
		var fileext=form1.pic.value.substring(form1.pic.value.length-4,form1.pic.value.length); 
		fileext=fileext.toLowerCase(); 
		if(!(fileext=='.jpg')&&!(fileext=='.gif')) 
		{
			alert("�Բ����ļ���ʽ����,����Ϊjpg��gif��ʽ�ļ�!"); 
			form1.pic.focus(); 
			return false; 
		} 
		
	}
	 
	form1.submit();
}
</script>
<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
		String method=request.getParameter("method");
		String title="";
		String chandi="";
		String daoyan = "";	
		String yanyuan = "";	
		String pianchang = "";	
		String url="";
		String content="";
		String id="";
		if(method.equals("editvideo")){
			id=request.getParameter("id").trim();
			List newsList=newsb.getOneVideo(Integer.parseInt(id));
			title=newsList.get(1).toString();
			chandi=newsList.get(3).toString();
			daoyan=newsList.get(4).toString();
			yanyuan=newsList.get(5).toString();
			pianchang=newsList.get(6).toString();
			url=newsList.get(7).toString();
			content=newsList.get(8).toString();
		}		
%>
<BODY onload="document.form1.infoContent.value=document.form1.content.value" >
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
<table width='100%' cellspacing='1' cellpadding='3' bgcolor='#CCCCCC' class="tablewidth">
<tr class="head"> 
      <td colspan="2">     
<%
	if(method.trim().equals("addvideo")){
%>
        ���������Ƶ �����ݼ�鲻�ܳ���5000���ַ���
<%}else{%>
	   �޸�������Ƶ �����ݼ�鲻�ܳ���5000���ַ���
<%} %>
      </td>
    </tr>
	<form name="form1" action="<%=basePath %>News.shtml" method="post"  enctype="multipart/form-data" >
  <tr bgcolor='#FFFFFF'> <input type="hidden" name="method" value="<%=method %>"> <input type="hidden" name="id" value="<%=id %>">
    <td width='30%'><div align="right">��Ƶ���ƣ�</div></td>
    <td ><input name="title" type="text" id="title" size="40" maxlength="100" value="<%=title %>"></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
    <td width='30%'><div align="right">��&nbsp;��&nbsp;ͼ��</div></td>
    <td ><input name="pic" type="file" contentEditable=false  size="40" maxlength="150" >&nbsp;<font color=red>300K����gif��jpg��ʽͼƬ</font></td>
  </tr>
  <tr bgcolor='#FFFFFF'> 
      <td width='30%'> 
        <div align="right">��&nbsp;&nbsp;&nbsp;&nbsp;�أ� </div>
      </td>
      <td bgcolor='#FFFFFF' ><input name="chandi" type="text" id="chandi" size="40" maxlength="100" value="<%=chandi %>"></td>
    </tr>
  <tr bgcolor='#FFFFFF'> 
      <td width='30%'> 
        <div align="right">��&nbsp;&nbsp;&nbsp;&nbsp;�ݣ� </div>
      </td>
      <td bgcolor='#FFFFFF' ><input name="daoyan" type="text" id="daoyan" size="40" maxlength="100" value="<%=daoyan %>"></td>
    </tr>
     <tr bgcolor='#FFFFFF'> 
      <td width='30%'> 
        <div align="right">��&nbsp;&nbsp;&nbsp;&nbsp;�ݣ� </div>
      </td>
      <td bgcolor='#FFFFFF' ><input name="yanyuan" type="text" id="yanyuan" size="40" maxlength="100" value="<%=yanyuan %>"></td>
    </tr>
     <tr bgcolor='#FFFFFF'> 
      <td width='30%'> 
        <div align="right">ӰƬ���ȣ� </div>
      </td>
      <td bgcolor='#FFFFFF' ><input name="pianchang" type="text" id="pianchang" size="10" maxlength="10" value="<%=pianchang %>"> ����</td>
    </tr>
    <tr bgcolor='#FFFFFF'> 
      <td width='30%'> 
        <div align="right">ӰƬ��ַ�� </div>
      </td>
      <td bgcolor='#FFFFFF' ><input name="url" type="text" id="url" size="40" maxlength="100" value="<%=url %>"></td>
    </tr>
  <tr bgcolor='#FFFFFF'> 
    <td colspan="2" valign="top"><TEXTAREA style="display:none" NAME="content" ROWS="20" COLS="70"><%=content %></TEXTAREA>	
	  <FCK:editor id="infoContent" basePath="/Sqwl/FCKeditor/"
              width="100%"
              height="400"
              skinPath="/Sqwl/FCKeditor/editor/skins/silver/"
              defaultLanguage="zh-cn"
              tabSpaces="8"
              imageBrowserURL="/Sqwl/FCKeditor/editor/filemanager/browser/default/browser.html?Type=Image&Connector=connectors/jsp/connector"
              linkBrowserURL="/Sqwl/FCKeditor/editor/filemanager/browser/default/browser.html?Connector=connectors/jsp/connector"
              flashBrowserURL="/Sqwl/FCKeditor/editor/filemanager/browser/default/browser.html?Type=Flash&Connector=connectors/jsp/connector"
              imageUploadURL="/Sqwl/FCKeditor/editor/filemanager/upload/simpleuploader?Type=Image"
              linkUploadURL="/Sqwl/FCKeditor/editor/filemanager/upload/simpleuploader?Type=File"
              flashUploadURL="/Sqwl/FCKeditor/editor/filemanager/upload/simpleuploader?Type=Flash">
      </FCK:editor>	
     </td>
    </tr>
  <tr bgcolor='#FFFFFF'> 
      <td colspan="2" align="center"> 
        <input class=mmcinb type='button' name='button' value='�ύ����' onclick='sub()'>
      </td>
    </tr>
	</form>
</table>
   </TD>
	</TR>
  </TBODY>
</TABLE>
</BODY>
<%} %>
</HTML>
