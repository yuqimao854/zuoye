<%@ page language="java" import="java.util.*,com.util.*" contentType="text/html;charset=gb2312" %>
<%@ include file="iframe/head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<LINK href="images/default.css" type=text/css rel=stylesheet>
<LINK href="images/css.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>
.ycbt {
	BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-COLOR: #EAF2EF; BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
}
.xsbt {
	BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-IMAGE: url(images/head1.gif); BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
}
.xsnr {
	DISPLAY: block
}
.ycnr {
	DISPLAY: none
}
</STYLE>
<SCRIPT type=text/javascript>
function tb_xs(t,m,n){
for(var i=1;i<=m;i++){
if (i != n){
document.getElementById("tb"+t+ "_bt" + i).className= "ycbt";
document.getElementById("tb"+t+ "_nr" + i).className= "ycnr";}
else{
document.getElementById("tb"+t+ "_bt" + i).className= "xsbt";
document.getElementById("tb"+t+ "_nr" + i).className= "xsnr";}}}
</SCRIPT>
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
<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
</HEAD>
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
<%String member=(String)session.getAttribute("member"); 
if(member==null){response.sendRedirect("login.jsp");}else{
String title=Common.toChineseAndTrim(request.getParameter("title"));
 %>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
<SCRIPT language=JavaScript>
<!--//Ŀ����Ϊ������񷽱�
document.write('<div class="wrap">');
//-->
</SCRIPT>
     <TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
		<TBODY>
        <TR>
          <TD class=head >
			<SPAN class=TAG>��Ҫ����</SPAN> 
			
		  </TD>
		</TR>
		<TR>
		<TD  class=middle align="center" >
		<form action="<%=basePath %>NewsServlet?method=addPrep" method="post" name="form1" >
         <TABLE   cellSpacing=0 cellPadding=0 width="100%" border=0>
         <TBODY>
                    
        <TR><input type=hidden name=sid value=<%=request.getParameter("id")%>><input type=hidden name=title value=<%=title%>>
          <TD width=45% align=right>��Ʒ���ƣ�</TD><TD align=left><%=title %></TD> 
		</TR> 
		<TR>
          <TD width=45% align=right>����������</TD><TD align=left><input type=text name=rs ></TD>
		</TR>
		<TR>
          <TD  align=right>�ͻ�ʱ�䣺</TD><TD align=left><input type=text name=sj  ></TD>
		</TR>
		<TR>
          <TD  align=right>�ͻ��ص㣺</TD><TD align=left><input type=text name=ts  ></TD>
		</TR>
		<TR>
          <TD  align=right>�� ϵ �ˣ�</TD><TD align=left><input type=text name=lxr ></TD>
		</TR>
		<TR>
          <TD  align=right>��ϵ��ʽ��</TD><TD align=left><input type=text name=lxfs  ></TD>
		</TR>
		<TR>
          <TD  align=center colspan=2><br><input type=button onclick="f1()" value="�ύԤ��"></TD>
		</TR>
				</TBODY>
			</TABLE>
			</form>			
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
<%} %>
</HTML>

<%@ include file="iframe/foot.jsp"%>