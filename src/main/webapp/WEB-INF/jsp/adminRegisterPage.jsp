<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>AdminRegister</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="main">
		<div class="container">
			<form:form method="POST" class="appointment-form" id="appointment-form" modelAttribute="admin" action="/adminRegister">
				<h2 style="text-Align: center">Admin Registration Form</h2>
				<div class="form-group-1">
					<input type="text" name="adminName" id="adminName"
						placeholder="Your Name" required /> <input type="email"
						name="adminEmailId" id="adminEmailId" placeholder="Email" required />
					<input type="password" name="adminPassword" id="adminPassword"
						placeholder="password" required />

				</div>
				<div class="form-check">
					<input type="checkbox" name="agree-term" id="agree-term"
						class="agree-term" /> <label for="agree-term"
						class="label-agree-term"><span><span></span></span>I agree
						to the <a href="#" class="term-service">Terms and Conditions</a></label>
				</div>
				<div class="form-submit">
					<input type="submit" name="submit" id="submit" class="submit"
						value="Register as Admin" />
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>