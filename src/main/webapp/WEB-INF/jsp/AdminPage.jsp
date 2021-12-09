<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>AdminPage</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util1.css">
<link rel="stylesheet" type="text/css" href="css/main1.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver3 m-b-110">
					<table>
							<thead >
								<tr class="row100 head">
									<th>Name</th>
									<th>EmailId</th>
									<th>Address</th>
									<th>Contact</th>
									<th>Ssc(%)</th>
									<th>Hsc(%)</th>
									<th>Stream</th>
									<th>Cut-Off</th>
									<th>College</th>
									<th>Set Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody class="table100-body js-pscroll">
								<c:forEach items="${sa}" var="sa">
									<tr class="row100 body">
										<form:form method="POST" modelAttribute="setStatus"
											action="setStatus">
											<td><input type="text" name="first_name"
												value="${sa.first_name}"></td>
											<td><input type="text" name="EmailId"
												value="${sa.emailId}"></td>
											<td><input type="text" name="address"
												value="${sa.address}"></td>
											<td><input type="text" name="contact"
												value="${sa.phoneNo}"></td>
											<td><input type="text" name="ssc" value="${sa.ssc}"></td>
											<td><input type="text" name="hsc" value="${sa.hsc}"></td>
											<td><input type="text" name="stream"
												value="${sa.stream}"></td>
											<td><input type="text" name="cutoff"
												value="${sa.cutoff}"></td>
											<td><input type="text" name="college"
												value="${sa.college}"></td>
											<td><select name="status"><option
														value="Accept">Accept</option>
													<option value="Reject">Reject</option>
											</select></td>
											<td><input type="submit" value="DONE"></td>
										</form:form>
									</tr>
								</c:forEach>
							</tbody>
						</div>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>