<%@ page import="org.Project.Connect" %>
<jsp:useBean id="s" class="org.Entity.Result"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
int i=Connect.update1(s);

if(i>0)
response.sendRedirect("UpdateResultSuccess.jsp");
else
response.sendRedirect("UpdateResultFailure.jsp");
%>

