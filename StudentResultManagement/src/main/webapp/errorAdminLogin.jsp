<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="Admin.jsp"  %>
<script>
var error = document.getElementById("error")

    error.textContent = "Invalid Username or Password"
    error.style.color = "red"
</script>