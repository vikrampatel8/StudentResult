<%@ page import="org.Project.Connect" %>
<jsp:useBean id="r" class="org.Entity.Result"></jsp:useBean>
<jsp:setProperty property="*" name="r"/>

<%
int i=Connect.save1(r);

if(i>0)
response.sendRedirect("AddResultSuccess.jsp");
else
response.sendRedirect("AddResultFailure.jsp");
%>

