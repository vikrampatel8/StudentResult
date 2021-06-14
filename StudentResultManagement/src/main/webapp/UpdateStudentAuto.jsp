<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="org.Project.Connect,org.Entity.Student"%>  
<!DOCTYPE html>
<html>
<head>
	<title>Update Student</title>
	<link href="assets/css/new.css" rel="stylesheet">
</head>
<body>
<%
String usn=request.getParameter("usn");
Student s1 = Connect.getRecordById(usn);
if(s1!=null){%>
    <!-- Header -->
    <header id="headerwrap" class="backstretched fullheight">
        <div class="container vertical-center"><br/><br/><br/>
            <div class="mainclass">
            <h1 align="center" style="font-size: 30px;color:white;"> UPDATE STUDENT</h1><span id='stat'></span>
                <form action="UpdateStudentRecord.jsp">
                    <table align="center">
                          <tr>
                            <td>
                                <label style="color:white;"> USN </label>
                            </td>
                            <td>
                                <input class="newclass" type="text" maxlength=10 name="usn" id="usn" autocomplete="off" pattern="[1-9][a-zA-Z]{2}[0-9]{2}[a-zA-Z]{2}[0-9]{3}" value="<%= s1.getUsn() %>" required>
                            </td>
                        </tr>
   <tr>
                            <td>
                                <label style="color:white;"> NAME</label>
                            </td>
                            <td>
                                <input class="newclass" type="text" name="name" id="name"  pattern="[A-Za-z .]+" value="<%= s1.getName() %>"required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;"> BRANCH </label>
                            </td>
                            <td>
                                <input class="newclass" type="text" name="branch" id="branch" pattern="[A-Za-z .]{3,}" value="<%= s1.getBranch() %>"required >
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;"> COURSE </label>
                            </td>
                            <td>
                                <input class="newclass" type="text" name="course" id="course" pattern="[A-Za-z .]+" value="<%= s1.getCourse() %>" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;align:left"> SEMESTER </label>
                            </td>
                            <td>
                                <input class="newclass" maxlength=1 type="number" name="semester" id="semester" min="1" max="8" value="<%= s1.getSemester() %>" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;align:left"> SECTION </label>
                            </td>
                            <td>
                                <input class="newclass" maxlength=1 type="text" name="section" id="section" pattern="[AaBbCc]" value="<%= s1.getSection() %>" required>
                            </td>
                        </tr>
                
                        <tr><td></td>
                            <td>
                                <input class="newclass" type="submit" name="submit" value="SUBMIT"	autocomplete="off">
                            </td>
                        </tr>
                
                                         </table>
                </form><br><br>
                </div>
        </div>
    </header>    <% }else{response.sendRedirect("UpdateStudentFailure.jsp");} %>
    
    <%@ include file="adminHome.jsp"  %>
    </body>
</html>