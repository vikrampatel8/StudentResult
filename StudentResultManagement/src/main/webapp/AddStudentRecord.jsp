<%@ page import="org.Project.Connect" %>
<jsp:useBean id="s" class="org.Entity.Student"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
int i=Connect.save(s);

if(i>0)
response.sendRedirect("AddStudentSuccess.jsp");
else
response.sendRedirect("AddStudentFailure.jsp");
%>

