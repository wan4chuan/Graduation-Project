<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<TABLE class=MainTable style="MARGIN-TOP: 0px" cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TBODY>
  <TR>
    <TD class=Main vAlign=top>
     <%--<img src=<%=basePath %>images/fff.jpg width=950 height=100 border=0>--%>
  </TD>
 </TR>
 </TBODY>
</TABLE>
<TABLE id=footer cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
<TBODY>
  <TR>
    <TD align=middle>
	<DIV align=center>����ʹ��IE6.0�����ϰ汾��� <br><%=sysList.get(8).toString() %>&nbsp;&nbsp;&nbsp;</DIV>
    </TD>
 </TR>
</TBODY>
</TABLE>
<SCRIPT language=JavaScript>
<!--//Ŀ����Ϊ������񷽱�
document.write('</div>');
//-->
</SCRIPT>

<SCRIPT language=JavaScript>
<!--
clickEdit.init();
//-->
</SCRIPT>
</BODY>
<%}else{ %>
<br><br><p align=center><%=sysList.get(6).toString() %>
<%} %>
</HTML>
