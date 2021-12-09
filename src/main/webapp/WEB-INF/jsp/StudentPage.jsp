<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<!-- Title Page-->
<title>Scholarship Application</title>
<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/mainn.css" rel="stylesheet" media="all">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-dark" >
		<a class="navbar-brand" href="#" style="color:#fff">Scholarship management</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup" >
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="#" style="color:#fff">Home <span
					class="sr-only">(current)</span></a> <a class="nav-item nav-link"
					href="/" style="color:#fff">Login</a> <a class="nav-item nav-link" href="/checkStatus" style="color:#fff">Check
					Status</a>
			</div>
		</div>
	</nav>
	
	<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-heading">
					<h2 class="title">Scholarship Application Form</h2>
				</div>
				<div class="card-heading-light">
					<br>
					<h2 class="title" style="color: black">Personal Details</h2>
				</div>
				<div class="card-body">
					<form:form method="POST" modelAttribute="scholarship" action="/applyscholarship">
						<div class="form-row m-b-55">
							<div class="name">Name</div>
							<div class="value">
								<div class="row row-space">
									<div class="col-6">
										<div class="input-group-desc">
											<input class="input--style-5" type="text" name="first_name">
											<label class="label--desc">first name</label>
										</div>
									</div>
									<div class="col-6">
										<div class="input-group-desc">
											<input class="input--style-5" type="text" name="last_name">
											<label class="label--desc">last name</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Address</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="address">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Email</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="email" name="emailId">
								</div>
							</div>
						</div>
						<div class="form-row ">
							<div class="name">Phone</div>
							<div class="value">
								<div class="col-13">
									<div class="input-group-desc">
										<input class="input--style-5" type="text" name="phoneNo">
										<label class="label--desc">Phone Number</label>
									</div>
								</div>
							</div>
						</div>
						<div class="card-heading-light">
							<br>
							<h2 class="title" style="color: black">ACADEMICS</h2>
						</div>
						<br>
						<br>

						<div class="form-row m-b-55">
							<div class="name">Score Percentage</div>
							<div class="value">
								<div class="row row-space">
									<div class="col-6">
										<div class="input-group-desc">
											<input class="input--style-5" type="text" name="ssc">
											<label class="label--desc">SSC Score</label>
										</div>
									</div>
									<div class="col-6">
										<div class="input-group-desc">
											<input class="input--style-5" type="text" name="hsc">
											<label class="label--desc">HSC Score</label>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row ">
							<div class="name">Cut-Off</div>
							<div class="value">
								<div class="col-13">
									<div class="input-group-desc">
										<input class="input--style-5" type="text" name="cutoff">
										<label class="label--desc">Corresponding to your Stream</label>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="name">Degree inteded to Pursue</div>
							<div class="value">
								<div class="input-group">
									<div class="rs-select2 js-select-simple select--no-search">
										<select name="stream">
											<option disabled="disabled" selected="selected">Choose
												option</option>
												<option value="M.B.B.S">M.B.B.S</option>
											<option value="B.E">B.E</option>
											<option value="B.sc">B.sc</option>
											<option value="Others">Others</option>
										</select>
										<div class="select-dropdown"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row ">
							<div class="name">College Intended</div>
							<div class="value">
								<div class="col-13">
									<div class="input-group-desc">
										<input class="input--style-5" type="text" name="college">
										<label class="label--desc">Mention with PinCode</label>
									</div>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn--radius-2 btn--red" type="submit">Apply</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>