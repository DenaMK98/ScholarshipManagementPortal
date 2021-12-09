<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<!--    Font awesome-->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
<!--    Font family for h1-->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@700&display=swap"
	rel="stylesheet">
<!--    Font for logo-->
<link
	href="https://fonts.googleapis.com/css2?family=Ubuntu:ital@1&display=swap"
	rel="stylesheet">
<!--  External css-->
<link rel="stylesheet" href="css/styles2.css">

<style>
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
	outline: none;
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

html {
	overflow-y: scroll;
}

body {
	background: #eee url('https://i.imgur.com/eeQeRmk.png');
	/* https://subtlepatterns.com/weave/ */
	font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-size: 62.5%;
	line-height: 1;
	color: #585858;
	padding: 22px 10px;
	padding-bottom: 55px;
}

::selection {
	background: #5f74a0;
	color: #fff;
}

::-moz-selection {
	background: #5f74a0;
	color: #fff;
}

::-webkit-selection {
	background: #5f74a0;
	color: #fff;
}

br {
	display: block;
	line-height: 1.6em;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

ol, ul {
	list-style: none;
}

input, textarea {
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	outline: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

strong, b {
	font-weight: bold;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

img {
	border: 0;
	max-width: 100%;
}

h1 {
	font-family: 'Amarante', Tahoma, sans-serif;
	font-weight: bold;
	font-size: 3.6em;
	line-height: 1.7em;
	margin-bottom: 10px;
	text-align: center;
}

/** page structure **/
#wrapper {
	display: block;
	width: 850px;
	background: #fff;
	margin: 0 auto;
	padding: 10px 17px;
	-webkit-box-shadow: 2px 2px 3px -1px rgba(0, 0, 0, 0.35);
}

#keywords {
	margin: 0 auto;
	font-size: 1.2em;
	margin-bottom: 15px;
}

#keywords thead {
	cursor: pointer;
	background: #c9dff0;
}

#keywords thead tr th {
	font-weight: bold;
	padding: 12px 30px;
	padding-left: 42px;
}

#keywords thead tr th span {
	padding-right: 20px;
	background-repeat: no-repeat;
	background-position: 100% 100%;
}

#keywords thead tr th.headerSortUp, #keywords thead tr th.headerSortDown
	{
	background: #acc8dd;
}

#keywords thead tr th.headerSortUp span {
	background-image: url('https://i.imgur.com/SP99ZPJ.png');
}

#keywords thead tr th.headerSortDown span {
	background-image: url('https://i.imgur.com/RkA9MBo.png');
}

#keywords tbody tr {
	color: #555;
}

#keywords tbody tr td {
	text-align: center;
	padding: 15px 10px;
}

#keywords tbody tr td.lalign {
	text-align: left;
}
</style>

</head>
<body 
	style="background-image: url('../images/bg.jpg'); background-size: cover; background-position: center;">
	<div id="wrapper">
		<h1>Scholarship Status</h1>

		<table id="keywords" cellspacing="0" cellpadding="0">
			<thead>
				<tr>
					<th><span>Name</span></th>
					<th><span>EmailId</span></th>
					<th><span>Status</span></th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td>${ss.first_name}</td>
						<td>${ss.emailId}</td>
						<td>${ss.status}</td>
					</tr>
			</tbody>
		</table>

	</div>

</body>
</html>