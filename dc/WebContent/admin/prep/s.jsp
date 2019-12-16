<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
 
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
<script type="text/javascript">
function sddid()
{
	if(document.form2.ddid.value=="")
	{
		alert("输入订单号");
		document.form2.ddid.focus();
		return false;
	}
	form2.submit();
}
</script>
 
<%
	String user=(String)session.getAttribute("user");
	//String type=(String)session.getAttribute("type");
	if(user==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
		 
%>
<BODY >
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
	
       <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD colspan="3" height=23>收支信息查询统计分析 </TD>
		  </TR> 
		<form action="<%=basePath %>NewsServlet?method=sDDrq" method="post" name="form1">  
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >订单查询（生成日期）：</TD>
			<TD width="35%" align="left" id=map>
			<select name=year>
			<option value=2011>2011</option>
			<option value=2000>2000</option>
			<option value=2001>2001</option>
			<option value=2002>2002</option>
			<option value=2003>2003</option>
			<option value=2004>2004</option>
			<option value=2005>2005</option>
			<option value=2006>2006</option>
			<option value=2007>2007</option>
			<option value=2008>2008</option>
			<option value=2009>2009</option>
			<option value=2010>2010</option>
			<option value=2011>2011</option>
			<option value=2012>2012</option>
			<option value=2013>2013</option>
			<option value=2014>2014</option>
			<option value=2015>2015</option>
			</select>
			<select name=month>
			<option value=01>1</option>
			<option value=02>2</option>
			<option value=03>3</option>
			<option value=04>4</option>
			<option value=05>5</option>
			<option value=06>6</option>
			<option value=07>7</option>
			<option value=08>8</option>
			<option value=09>9</option>
			<option value=10>10</option>
			<option value=11>11</option>
			</select>
			<select name=day>
			<%for(int i=1;i<32;i++) {%>
			<option value=<%=i %>><%=i %></option>
			<%} %>
			</select>
			</TD>
			<TD align=left><input type="submit" value="提交"></TD>
		  </TR>
		 </form>
		 <form action="<%=basePath %>NewsServlet?method=sDDid" method="post" name="form2" >
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >订单查询（按订单号）：</TD>
			<TD width="30%" align="left" id=map><input type=text size=20 name=ddid></TD>
			<TD align=left><input type="button" value="提交" onclick="sddid()"></TD>
			</TD>
		  </TR>
		  </form>
		 <form action="<%=basePath %>NewsServlet?method=sYye" method="post" name="form3">
		  <TR align="center" bgColor=#ffffff>
			<TD width="30%" align="right" >营业额统计：</TD>
			<TD width="30%" align="left" id=map> 
			<select name=year>
			<option value=2011>2011</option>
			<option value=2000>2000</option>
			<option value=2001>2001</option>
			<option value=2002>2002</option>
			<option value=2003>2003</option>
			<option value=2004>2004</option>
			<option value=2005>2005</option>
			<option value=2006>2006</option>
			<option value=2007>2007</option>
			<option value=2008>2008</option>
			<option value=2009>2009</option>
			<option value=2010>2010</option>
			<option value=2011>2011</option>
			<option value=2012>2012</option>
			<option value=2013>2013</option>
			<option value=2014>2014</option>
			<option value=2015>2015</option>
			</select>
			<select name=month>
			<option value=01>1</option>
			<option value=02>2</option>
			<option value=03>3</option>
			<option value=04>4</option>
			<option value=05>5</option>
			<option value=06>6</option>
			<option value=07>7</option>
			<option value=08>8</option>
			<option value=09>9</option>
			<option value=10>10</option>
			<option value=11>11</option>
			</select>
			<select name=day>
			<%for(int i=1;i<32;i++) {%>
			<option value=<%=i %>><%=i %></option>
			<%} %>
			</select> - 
			<select name=year2>
			<option value=2011>2011</option>
			<option value=2000>2000</option>
			<option value=2001>2001</option>
			<option value=2002>2002</option>
			<option value=2003>2003</option>
			<option value=2004>2004</option>
			<option value=2005>2005</option>
			<option value=2006>2006</option>
			<option value=2007>2007</option>
			<option value=2008>2008</option>
			<option value=2009>2009</option>
			<option value=2010>2010</option>
			<option value=2011>2011</option>
			<option value=2012>2012</option>
			<option value=2013>2013</option>
			<option value=2014>2014</option>
			<option value=2015>2015</option>
			</select>
			<select name=month2>
			<option value=01>1</option>
			<option value=02>2</option>
			<option value=03>3</option>
			<option value=04>4</option>
			<option value=05>5</option>
			<option value=06>6</option>
			<option value=07>7</option>
			<option value=08>8</option>
			<option value=09>9</option>
			<option value=10>10</option>
			<option value=11>11</option>
			</select>
			<select name=day2>
			<%for(int i=1;i<32;i++) {%>
			<option value=<%=i %>><%=i %></option>
			<%} %>
			</select>
			<TD align=left><input type="submit" value="提交"></TD>
			</TD>
		  </TR>
		   </form>
		</TBODY>
	   </TABLE>
	 
    </TD>
  </TR>
  </TBODY>
</TABLE>
</BODY>
<%} %>
</HTML>
