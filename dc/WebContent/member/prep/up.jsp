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
 		alert("请填写订购数量！");
 		document.form1.rs.focus();
 		return false;
 	}
 	if(isNaN(document.form1.rs.value))
 	{
 		alert("订购数量只能为整数！");
 		document.form1.rs.focus();
 		return false;
 	}
 	if(document.form1.sj.value=="")
 	{
 		alert("请填写送货时间！");
 		document.form1.sj.focus();
 		return false;
 	}if(document.form1.ts.value=="")
 	{
 		alert("请填写送货地点！");
 		document.form1.ts.focus();
 		return false;
 	}if(document.form1.lxr.value=="")
 	{
 		alert("请填写联系人！");
 		document.form1.lxr.focus();
 		return false;
 	}if(document.form1.lxfs.value=="")
 	{
 		alert("请填写联系方式！");
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
          <TD width=45% align=right>菜品名称：</TD><TD align=left><%=list.get(1).toString() %></TD> 
		</TR> 
		<TR>
          <TD width=45% align=right>订购数量：</TD><TD align=left><input type=text name=rs value=<%=list.get(2).toString() %>></TD>
		</TR>
		<TR>
          <TD  align=right>送货时间：</TD><TD align=left><input type=text name=sj   value=<%=list.get(3).toString() %>></TD>
		</TR>
		<TR>
          <TD  align=right>送货地点：</TD><TD align=left><input type=text name=ts   value=<%=list.get(4).toString() %>></TD>
		</TR>
		<TR>
          <TD  align=right>联 系 人：</TD><TD align=left><input type=text name=lxr  value=<%=list.get(5).toString() %>></TD>
		</TR>
		<TR>
          <TD  align=right>联系方式：</TD><TD align=left><input type=text name=lxfs   value=<%=list.get(6).toString() %>></TD>
		</TR>
		<TR>
          <TD  align=center colspan=2><br><input type=button onclick="f1()" value="提交预订"></TD>
		</TR>
				</TBODY>
			</TABLE>
			</form>			
</BODY>
<%} %>
</HTML>
