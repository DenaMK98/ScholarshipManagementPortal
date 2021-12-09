<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<title>Login V9</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<div class="container-login100"
		style="background-image: url('images/bg-01.jpg');">
		<div class=" p-l-55 p-r-55 p-t-80 p-b-30 col-md-6">
			<form:form class="login100-form validate-form" action="/adminLoginInto" >
				<span class="login100-form-title p-b-37">Admin</span>

				<div class="wrap-input100 validate-input m-b-20"
					data-validate="Enter username or email">
					<input class="input100" type="text" name="adminEmailId" id="adminEmailId"
						placeholder="abc@gmail.com"> <span
						class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25"
					data-validate="Enter password">
					<input class="input100" type="password" name="adminPassword"
						placeholder="password"> <span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn">Sign In</button>
				</div>

				<div class="text-center p-t-57 p-b-20">
					<span class="txt1"> Or login with </span>
				</div>

				<div class="flex-c p-b-112">
					<a href="#" class="login100-social-item"> <i
						class="fa fa-facebook-f"></i>
					</a> <a href="#" class="login100-social-item"> <img
						src="images/icons/icon-google.png" alt="GOOGLE">
					</a>
				</div>

				<div class="text-center">
					<a href="/adminRegisterRequest" class="txt2 hov1"> Sign Up </a>
				</div>
			</form:form>
		</div>
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30 col-md-6">
			<form:form class="login100-form validate-form" action="/studentLoginInto" >
				<span class="login100-form-title p-b-37">Student</span>

				<div class="wrap-input100 validate-input m-b-20"
					data-validate="Enter username or email">
					<input class="input100" type="text" name="studentEmailId" id="studentEmailId"
						placeholder="username or email"> <span
						class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25"
					data-validate="Enter password">
					<input class="input100" type="password" name="studentPassword"
						placeholder="password"> <span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn">Sign In</button>
				</div>

				<div class="text-center p-t-57 p-b-20">
					<span class="txt1"> Or login with </span>
				</div>

				<div class="flex-c p-b-112">
					<a href="#" class="login100-social-item"> <i
						class="fa fa-facebook-f"></i>
					</a> <a href="#" class="login100-social-item"> <img
						src="images/icons/icon-google.png" alt="GOOGLE">
					</a>
				</div>

				<div class="text-center">
					<a href="/studentRegisterRequest" class="txt2 hov1"> Sign Up </a>
				</div>
			</form:form>
		</div>
	</div>
	<div id="dropDownSelect1"></div>
</body>
</html>