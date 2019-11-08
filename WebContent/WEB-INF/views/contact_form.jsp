<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New/Edit Contact</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style type="text/css">
#success_message {
	display: none;
}
</style>
</head>
<body>
	<div class="container">

		<form:form class="well form-horizontal" action="save" method="post" id="contact_form" modelAttribute="contact">
			<fieldset>

				<!-- Form Name -->
				<legend>
					<center>
						<h2>
							<b>New/Edit Contact Form</b>
						</h2>
					</center>
				</legend>
				<br>
				<form:hidden path="id" />

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Name</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span><form:input path="name" placeholder="Type Your Name" class="form-control" type="text"/>
						</div>
					</div>
				</div>

				<!-- Text input-->



				<!-- Text input-->

				<!-- Text input-->

				<!-- Text input-->

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">E-Mail</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-envelope"></i></span> <form:input path="email" placeholder="Provide Your E-Mail Address" class="form-control" type="text"/>
						</div>
					</div>
				</div>


				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">Address</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <form:input path="address" placeholder="Type Your Present Address" class="form-control" type="text"/>
						</div>
					</div>
				</div>
				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Contact No.</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-earphone"></i></span><form:input path="phone" placeholder="Provide Your Phone Number" class="form-control" type="text"/>
						</div>
					</div>
				</div>

				<!-- Select Basic -->

				<!-- Success message -->
				<div class="alert alert-success" role="alert" id="success_message">
					Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.
				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<br>
						&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<button type="submit" value="submit" class="btn btn-warning">
							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSUBMIT <span
								class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						</button>
					</div>
				</div>

			</fieldset>
		</form:form>
	</div>
	</div>
	<!-- /.container -->
</body>
</html>