<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<jsp:useBean id="mb" scope="page" class="com.bean.MemberBean"></jsp:useBean>
<jsp:useBean id="tb" scope="page" class="com.bean.HzpBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<HTML><HEAD>
<LINK href="<%=basePath %>member/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %>member/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %>images/css/Common.js"></SCRIPT>
<SCRIPT language=JavaScript src="<%=basePath %>member/images/calendar.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>

<SCRIPT language=JavaScript src="<%=basePath %>member/images/city.js"></SCRIPT>
<script type="text/javascript">
function f1()
{//rs  sj ts lxr lxfs
 	if(document.form1.rs.value=="")
 	{
 		alert("����д����������");
 		document.form1.rs.focus();
 		return false;
 	}
 	if(isNaN(document.form1.rs.value))
 	{
 		alert("��������ֻ��Ϊ������");
 		document.form1.rs.focus();
 		return false;
 	}
 	if(document.form1.sj.value=="")
 	{
 		alert("����д�ͻ�ʱ�䣡");
 		document.form1.sj.focus();
 		return false;
 	}if(document.form1.ts.value=="")
 	{
 		alert("����д�ͻ��ص㣡");
 		document.form1.ts.focus();
 		return false;
 	}if(document.form1.lxr.value=="")
 	{
 		alert("����д��ϵ�ˣ�");
 		document.form1.lxr.focus();
 		return false;
 	}if(document.form1.lxfs.value=="")
 	{
 		alert("����д��ϵ��ʽ��");
 		document.form1.lxfs.focus();
 		return false;
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
	String member=(String)session.getAttribute("member");
	String type=(String)session.getAttribute("type");
	if(member==null||type==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
		 String id=request.getParameter("id");
		 List list=tb.getMy11Prep("select * from prep where id='"+id+"'");
%>
<BODY >
<br><br>
<form action="<%=basePath %>NewsServlet?method=upPrep" method="post" name="form1" >
         <TABLE   cellSpacing=0 cellPadding=0 width="100%" border=0>
         <TBODY>
                    
        <TR><input type=hidden name=id value=<%=id%>> 
          <TD width=45% align=right>��Ʒ���ƣ�</TD><TD align=left><%=list.get(1).toString() %></TD> 
		</TR> 
		<TR>
          <TD width=45% align=right>����������</TD><TD align=left><input type=text name=rs value=<%=list.get(2).toString() %>></TD>
		</TR>
		<TR>
          <TD  align=right>�ͻ�ʱ�䣺</TD><TD align=left><input type=text name=sj   value=<%=list.get(3).toString() %>></TD>
		</TR>
		<TR>
          <TD  align=right>�ͻ��ص㣺</TD><TD align=left><input type=text name=ts   value=<%=list.get(4).toString() %>></TD>
		</TR>
		<TR>
          <TD  align=right>�� ϵ �ˣ�</TD><TD align=left><input type=text name=lxr  value=<%=list.get(5).toString() %>></TD>
		</TR>
		<TR>
          <TD  align=right>��ϵ��ʽ��</TD><TD align=left><input type=text name=lxfs   value=<%=list.get(6).toString() %>></TD>
		</TR>
		<TR>
          <TD  align=center colspan=2><br><input type=button onclick="f1()" value="�ύԤ��"></TD>
		</TR>
				</TBODY>
			</TABLE>
			</form>			
</BODY>
<%} %>
</HTML>
