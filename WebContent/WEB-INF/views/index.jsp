<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Manager</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div align="center">
		<h1>Employee Contact List</h1>
		<h3><a href="new">Create A New Contact</a></h3>
		<table class="table">
			<thead>
				<tr>
					<th>No</th>
					<th>Name</th>
					<th>Email</th>
					<th>Address</th>
					<th>Phone</th>
					<th>Action</th>
				</tr>
			</thead>
			<c:forEach items="${listContact}" var="contact" varStatus="status">
				<tr>
				<td>${status.index+ 1}</td>
				<td>${contact.name}</td>
				<td>${contact.email}</td>
				<td>${contact.address}</td>
				<td>${contact.phone}</td>
				<td>
				<a href="edit?id=${contact.id}">Edit</a>
				&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="delete?id=${contact.id}">Delete</a>
				</td>
				</tr>
			</c:forEach>


		</table>


	</div>
</body>
</html>