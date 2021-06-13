<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.Entity.*,org.Project.Connect,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
	<title>Student List</title>
	<link href="assets/css/new.css" rel="stylesheet">
</head>
<body>
<%  
List<Student> list=Connect.getAllRecords();  
request.setAttribute("list",list);  
%> 
<!-- Header -->
<header id="headerwrap" class="backstretched fullheight">
	<div class="container vertical-center"><br/><br/><br/>
		<div class="mainclass">
            <h1 align="center" style="font-size: 30px;color:white;"> Registered Students </h1>
  				<table class="table">
    				<thead>
      					<tr class="success">
        				<td><b>Usn</b></td>
       					 <td><b>Name</b></td>
       					 <td><b>Semester</b></td>
       					 <td><b>Section</b></td>
       					 <td><b>Result</b></td>
     					 </tr>
    			   </thead>
    			   <tbody>
    			   <c:forEach items="${list}" var="u"> 
    			       <tr class="info">
    			       		<td>${u.getUsn()}</td>
    			       		<td>${u.getName()}</td>
    			       		<td>${u.getSemester()}</td>
    			       		<td>${u.getSection()}</td>
    			       		<c:url value="result.jsp?" var="completeURL">  
 								<c:param name="usn" value="${u.getUsn()}"/>  
							</c:url>
    			       		<td><a href="${completeURL}"><button class="button"><span>RESULT</span></button></a></td>
    			       </tr>
    			   </c:forEach>
    			   </tbody>
 			 </table>
 	    </div>
	</div>
</header>
<%@ include file="adminHome.jsp"  %>
</body>
</html>
<style>
.button {
  border-radius: 2px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 150px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
            