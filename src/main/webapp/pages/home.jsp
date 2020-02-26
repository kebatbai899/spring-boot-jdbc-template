<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>HOME PAGE</title>
</head>
<body>
	
	<a href="addnewstudent">Add Student</a>
	<div align="center" >
		<h3>Display all student</h3>
		<table border="1" cellpadding="10">
			<thead>
			<tr>
				<th>Student Id</th>
				<th>Student Name</th>
				<th>Student Age</th>
				<th>Update Action </th>
				<th>Remove Action</th>
			</tr>
			</thead>
			<c:forEach items="${allStudents}" var="student">
    		<tr>
    			<%-- <td>${student.id }</td> this also work too, the "id" must be the same variable in Student class--%>
        		<td>${student.getId()}</td> 
    			<td>${student.getName()}</td>
        		<td>${student.getAge()}</td>
        		<td>
        			<a href="/updateformstudent/${student.getId()}">Edit</a>
        		</td>
        		<td>
        			<a href="/deletestudent/${student.getId()}">Remove</a>
        		</td>
    		</tr>	
			</c:forEach>
		</table>
	</div>
	
</body>
</html>