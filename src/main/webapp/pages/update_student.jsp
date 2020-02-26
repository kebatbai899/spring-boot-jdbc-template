<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Update Student Page</title>
</head>
<body>
	<div align="center">
	<h3>Update Student</h3>
	<form:form method="post" action="/updateformstudent/${studentId}" modelAttribute="updatedStudent">
		Student Id:   <form:input type="number" path="id" value="${studentId}" /><br>
 		Student Name: <form:input type="text" path="name"   /><br>
		Student Age:  <form:input type="number" path="age"  /><br>
		<button type="submit">Update</button>
	</form:form>
	</div>

</body>
</html>