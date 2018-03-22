<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.full.co.in.RegistrationControl"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Information</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style type="text/css">
body {
	font-family: sans-serif;
	height: 100%
}

.sbar1 {
	height: 100%;
	width: 200px;
	position: fixed;
	top: 0;
	right: 0;
	background-color: #7FFFD4;
	color: black;
	padding: 8px 16px 8px 6px;
	display: block;
	text-align: right;
	font-size: 25px;
}

.table1 {
	display: inline-block;
	margin-right: 170px;
	padding-left: 15px;
	margin-left: 15px;
	height: 100px;
	weight: 100px;
	vertical-align: middle;
}

img {
	height: 100px;
	width: 100px;
}

.wrapper {
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	font-size: 75px;
}

h1 {
	text-align: center;
	padding-top: 5px;
	color: LimeGreen;;
}

.nav-bar {
	display: block;
	width: 80%;
}

.switch {
	position: relative;
	display: block;
	width: 60px;
	height: 30px;
	cursor: pointer;
	border-radius: 15px;
	background-color: CadetBlue;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 5px;
	left: 5px;
	width: 20px;
	height: 25px;
	background-color: azure;
	transition: .4s;
	border-radius: 15px;
}

.active {
	background-color: DodgerBlue;
}

.active .slider {
	left: 35px;
}

.icon {
	background: url('icons1.png') no-repeat;
	height: 30px;
	width: 30px;
	position: absolute;
	right: 60px;
	bottom: 2px;
	z-index: 1;
	background-size: 30px;
	cursor: pointer;
}

.wrapper span {
	text-align: center;
}

.log {
	float: right;
	border-radius: 15px;
	height: 40px;
	width: 50px;
	border-color: blue;
	z-index: 1;
}

.rounded-circle {
	display: inline-block;
}

#toggle {
	margin-left: 45%;
}

#update1 {
	font-size: medium;
	width: 400px;
	height: 100px;
	color: gray;
}

.scrol2 {
	overflow:auto;
	height:100%;
	padding-right:20px;
	
	
}
</style>
</head>
<body>
	<div class="nav-bar">
		<h1>Welcome</h1>

		<a href="index.jsp" class="log">LogOut</a>
	</div>

	<div class="details">
		<img src="image1.png" class="rounded-circle" />

		<div class="table1">

			<p>
				<%=(String) session.getAttribute("email")%><br />
				<%=(String) session.getAttribute("name")%><br />

				<%=(String) session.getAttribute("password")%><br />

				<%=(String) session.getAttribute("mobile")%><br />
			</p>
			<%
				response.setHeader("Cache-Control", "no-cache");
				response.setHeader("Cache-Control", "no-store");
				response.setHeader("Pragma", "no-cache");
				response.setDateHeader("Expires", 0);
				String userId = (String) session.getAttribute("email");
				if (userId == null) {
					response.sendRedirect("index.jsp");
				}
			%>

		</div>
	</div>

	<div class="wrapper">
		<p>
			<span id="hrs">00</span>:<span id="min">00</span>:<span id="sec">00</span>
		</p>
		<div class="sbar1">
			<div id="timecontainer" class="scrol2"></div>
			<i class="icon" id="update" title="update data" data-toggle="modal"
				data-target="#example"></i>
		</div>
		<div class="modal fade" id="example" tabindex="-1" role="dialog"
			aria-labelledby="example" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Update the
							time</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<input type="time" id="update1" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" id="append">AppendTime</button>
					</div>
				</div>
			</div>
		</div>


		<span class="switch" id="toggle"> <span class="slider">
		</span>
		</span>


	</div>





	<script type="text/javascript" src="CountDown.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>

