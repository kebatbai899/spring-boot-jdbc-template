<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Add New Student</title>
</head>
<body>
<div align="center">
<h3>Add New Student</h3>
	<form:form method="post" action="/addnewstudent" modelAttribute="student">
		Student Name: <form:input type="text" path="name" /><br>
		Student Age: <form:input type="number" path="age" /><br>
		<button type="submit">Add</button>
	</form:form>
</div>

<!-- <div align="center"> -->
<!-- 	<h1>Add New Student</h1><br> -->
	
<%-- 	<form action="#" th:action="@{/add}" th:object="$student" method="post" > --%>
<!-- 		Student Name: <input type="text" th:field="*{name}"><br> -->
<!-- 		Student Age:  <input type="number" th:field="*{age}"><br> -->
<!-- 		<button type="submit">Add Student</button> -->
<%-- 	</form> --%>
<!-- </div> -->
</body>
</html>