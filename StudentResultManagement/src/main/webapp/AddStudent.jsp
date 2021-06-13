<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Add Student</title>
	<link href="assets/css/new.css" rel="stylesheet">
</head>
<body>
    <!-- Header -->
    <header id="headerwrap" class="backstretched fullheight">
        <div class="container vertical-center"><br/><br/><br/>
            <div class="mainclass">
            <h1 align="center" style="font-size: 30px;color:white;"> ADD STUDENT</h1><span id="stat"></span>
                <form action="AddStudentRecord.jsp" method="post">
                    <table align="center">
                        <tr>
                            <td>
                                <label style="color:white;"> NAME</label>
                            </td>
                            <td>
                                <input class="newclass" type="text" name="name" id="name"  pattern="[A-Za-z .]+" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;"> BRANCH </label>
                            </td>
                            <td>
                                <input class="newclass" type="text" name="branch" id="branch" pattern="[A-Za-z]+" required >
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;"> COURSE </label>
                            </td>
                            <td>
                                <input class="newclass" type="text" name="course" id="course" pattern="[A-Za-z .]+"  required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;"> USN </label>
                            </td>
                            <td>
                                <input class="newclass" type="text" maxlength=10 name="usn" id="usn" autocomplete="off" pattern="[1-9][a-zA-Z]{2}[0-9]{2}[a-zA-Z]{2}[0-9]{3}"  required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;align:left"> SEMESTER </label>
                            </td>
                            <td>
                                <input class="newclass" maxlength=1 type="number" name="semester" id="semester" min="1" max="8"  required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label style="color:white;"> SECTION </label>
                            </td>
                            <td>
                                <input class="newclass" maxlength=1 type="text" name="section" id="section" pattern="[AaBbCc]"  required>
                            </td>
                        </tr>
                
                        <tr><td></td>
                            <td>
                                <input type="submit" name="submit" value="SUBMIT">
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
            