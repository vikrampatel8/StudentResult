<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.Entity.*,org.Project.Connect,java.util.*"%> 
<%
String usn =  request.getParameter("usn");
Result r = Connect.getRecordById1(usn);

if(r != null)
   {
	response.sendRedirect("result.jsp?usn="+String.valueOf(usn));

   }
else{
	response.sendRedirect("errorStudentSearch.jsp");
}
%>