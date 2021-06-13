<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@page import="org.Project.Connect,org.Entity.Result"%>  
    
<!DOCTYPE html>
<html>
<head>
	<title>Update Result</title>
	<link href="assets/css/new.css" rel="stylesheet">
</head>
<body>
<%
String usn=request.getParameter("usn");
Result r1 = Connect.getRecordById1(usn);%>
    <!-- Header -->
    <header id="headerwrap" class="backstretched fullheight">
        <div class="container vertical-center"><br/><br/><br/>
            <div class="mainclass">
            <h1 align="center" style="font-size: 30px;color:white;">UPDATE RESULT</h1><span id="stat"></span>
                 <form action="UpdateResultRecord.jsp" method="post">
                    <table align="center">
                        <tr>
                            <td>
                                <label style="color:white;"> USN </label>
                            </td>
                            <td>
                                <input class="newclass" type="text" name="usn" id="usn"  maxlength="10" pattern="[1-9][a-zA-Z]{2}[0-9]{2}[a-zA-Z]{2}[0-9]{3}" value="<%= r1.getUsn() %>" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;"> SYSTEM SOFTWARE  </label>
                            </td>
                            <td>
                                <input class="newclass" type="number" name="ss" id="ss" min="1" max="100" value="<%= r1.getSs() %>"required >
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;"> COMPUTER GRAPHICS</label>
                            </td>
                            <td>
                                <input class="newclass" type="number" name="cg" id="cg" min="1" max="100" value="<%= r1.getCg() %>" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;"> WEB</label>
                            </td>
                            <td>
                               <input class="newclass" type="number" name="web" id="web" min="1" max="100" value="<%= r1.getWeb() %>" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;align:left">  MATHS</label>
                            </td>
                            <td>
                                <input class="newclass" type="number" name="maths" id="maths" min="1" max="100" value="<%= r1.getMaths() %>" required>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                <label style="color:white;align:left">DATA MINING</label>
                            </td>
                            <td>
                                <input class="newclass" type="number" name="dm" id="dm" min="1" max="100" value="<%= r1.getDm() %>" required>
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
    </header>
    <%@ include file="adminHome.jsp"  %>
    </body>
</html>
            