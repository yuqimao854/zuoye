<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312" %>
<jsp:useBean id="sys" scope="page" class="com.bean.SystemBean" /> 
<jsp:useBean id="abc" scope="page" class="com.bean.AfficheBean"/> 
<jsp:useBean id="tb" scope="page" class="com.bean.HzpBean"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List sysList=sys.getSiteInfo();
 
List affList=abc.getAllAffiche(); 
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

<SCRIPT language=JavaScript>
<!--//���γ������
function killErr(){
	return true;
}
window.onerror=killErr;
//-->
</SCRIPT>
<SCRIPT language=JavaScript>
<!--//��������һ������С����
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
 
<BODY text=#000000  background=images/xh.gif  leftMargin=0 topMargin=0>
<SCRIPT language=JavaScript>
<!--//Ŀ����Ϊ������񷽱�
document.write('<div class="wrap">');
//-->
</SCRIPT>
<TABLE id=toplogin cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
  <TBODY>
  <TR>
    <TD vAlign=center align=left>
      <DIV class=jstime style="FLOAT: left; WIDTH: 45%">
      <%String member2=(String)session.getAttribute("member");if(member2==null){ %>
      ��<a href="login.jsp">��Ա��¼</a>����<a href="reg.jsp">���ע��</a>����<a href="lost.jsp">��������</a>��
      <%}else{   %>
      ��ӭ�����𾴵Ļ�Ա��<%=member2 %> <A href="member/index.jsp" target="">����Ա���ġ�</A>
      <%} %>
      </DIV>
      <DIV class=jstime style="FLOAT: right; WIDTH: 45%; TEXT-ALIGN: right">
	  <!--****************ʱ��������ʼ****************-->
      <SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;����'+'��һ����������'.charAt(new Date().getDay());",1000)</SCRIPT>
      <SPAN id=clock></SPAN>
	  <!--****************ʱ����������****************-->&nbsp;&nbsp; 
      <A href="javascript:javascript:window.external.AddFavorite('<%=basePath %>','<%=sysList.get(0).toString() %>');"> </A> 
      <A onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('<%=basePath %>');" href="http://localhost/#"> </A> 
	  <A href="mailto:<%=sysList.get(4).toString() %>"> </A> 
	  </DIV>
	</TD>
   </TR>
   </TBODY>
</TABLE>
<TABLE id=header cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
<TBODY>
  <TR>
    <TD><DIV class=ad id=banner><img src="images/abc.gif" width="950" height="130" border=0></DIV></TD>
  </TR>
 </TBODY>
</TABLE>
<TABLE id=guide cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
<TBODY>
  <TR>
    <TD align=middle>
	<!--****************���˵���ʼ****************-->
	
	<A href="index.jsp" target="">��    ҳ</A> |
	<A href="nhzp.jsp" target="">��Ʒ��Ϣ</A> |	
	<A href="search.jsp" target="">��Ʒ��ѯ</A> |
	<A href="guestbook.jsp" target="">���Թ���</A> |
	<A href="member/index.jsp" target="">��Ա����</A> 
	<A href="admin/login.jsp" target="">�����½</A> 
	<!--****************���˵�����****************-->
	</TD>
  </TR>
</TBODY>
</TABLE>



