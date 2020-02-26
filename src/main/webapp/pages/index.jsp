<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Index Home Page</title>
</head>
<body>

<a href="new">Add Student</a>
	<div align="center" >
		<h3>Display all student</h3>
		<table border="1" cellpadding="10">
			<thead>
			<tr>
				<th>Student Id</th>
				<th>Student Name</th>
				<th>Student Age</th>
			</tr>
			</thead>
			<c:forEach items="${listOfStudents}" var="student">
    		<tr>
        		<td>${student.getId()}</td>
    			<td>${student.getName()}</td>
        		<td>${student.getAge()}</td>
    		</tr>	
			</c:forEach>
		</table>
	</div>
</body>
</html>