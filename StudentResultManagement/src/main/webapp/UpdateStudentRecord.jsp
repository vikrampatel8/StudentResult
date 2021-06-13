<%@ page import="org.Project.Connect" %>
<jsp:useBean id="s" class="org.Entity.Student"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
int i=Connect.update(s);

if(i>0)
response.sendRedirect("UpdateStudentSuccess.jsp");
else
response.sendRedirect("UpdateStudentFailure.jsp");
%>

