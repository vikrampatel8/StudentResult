<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Update Result</title>
	<link href="assets/css/new.css" rel="stylesheet">
</head>
<body>
    <!-- Header -->
    <header id="headerwrap" class="backstretched fullheight">
        <div class="container vertical-center"><br/><br/><br/>
            <div class="mainclass">
            <h1 align="center" style="font-size: 30px;color:white;">UPDATE RESULT</h1><span id="stat"></span>
                 <form action="UpdateResultAuto.jsp" method="post">
                    <table align="center">
                        <tr>
                            <td>
                                <label style="color:white;"> USN </label>
                            </td>
                            <td>
                                <input class="newclass" type="text" name="usn" id="usn"  maxlength="10" pattern="[1-9][a-zA-Z]{2}[0-9]{2}[a-zA-Z]{2}[0-9]{3}" required>
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
<script type="text/javascript">
    document.myform.submit();
</script>