<%@ page import="org.Project.Connect" %>
<jsp:useBean id="s" class="org.Entity.Student"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>

<%
int i=Connect.delete(s);

if(i>0)
response.sendRedirect("DeleteStudentSuccess.jsp");
else
response.sendRedirect("DeleteStudentFailure.jsp");
%>
