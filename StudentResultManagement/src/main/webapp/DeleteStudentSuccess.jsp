<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="DeleteStudent.jsp"  %>

<script>
var error = document.getElementById("stat")
error.textContent = "Record deleted Successfully!!"
error.style.color = "green"
</script>