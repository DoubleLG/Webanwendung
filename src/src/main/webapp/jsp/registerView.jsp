<%@page import="de.hs_lu.beans.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<!-- Im Folgenden werden die Importe organisiert -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<!--  own customized stylesheet -->
<link rel="stylesheet" href="../css/ownCustomization.css">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.js"></script>
<script type="text/javascript" src="../js/register.js"></script>
</head>
<body>
	<jsp:useBean id="user" class="de.hs_lu.beans.UserBean" scope="session"></jsp:useBean>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="../index.jsp">FitnessSeite</a>
			</div>
		</div>
	</nav>

	<div class="container">


		<div class="row">
			<div
				class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form role="form" id="registerForm" action="./registerAppl.jsp" method="get"
					scope="session" onsubmit="return inputCheck(this)">
					<h2>
						Please Sign Up <small>It's free and always will be.</small>
					</h2>
					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="text" name="first_name" id="first_name"
									class="form-control input-lg" placeholder="First Name"
									tabindex="1">
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="text" name="last_name" id="last_name"
									class="form-control input-lg" placeholder="Last Name"
									tabindex="2">
							</div>
						</div>
					</div>
					<div class="form-group">
						<input type="text" name="userId" id="userId"
							class="form-control input-lg" placeholder="Display Name"
							tabindex="3">
					</div>
					<div class="form-group">
						<input type="email" name="email" id="email"
							class="form-control input-lg" placeholder="Email Address"
							tabindex="4">
					</div>
					<div class="row">
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="password" name="password" id="password"
									class="form-control input-lg" placeholder="Password"
									tabindex="5">
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-md-6">
							<div class="form-group">
								<input type="password" name="password_confirmation"
									id="password_confirmation" class="form-control input-lg"
									placeholder="Confirm Password" tabindex="6">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-4 col-sm-3 col-md-3">
							<span class="button-checkbox">
								<button type="button" class="btn" data-color="info" tabindex="7">I
									Agree</button> <input type="checkbox" name="t_and_c" id="t_and_c"
								class="hidden" value="1">
							</span>
						</div>
						<div class="col-xs-8 col-sm-9 col-md-9">
							By clicking <strong class="label label-primary">Register</strong>,
							you agree to the <a href="#" data-toggle="modal"
								data-target="#t_and_c_m">Terms and Conditions</a> set out by
							this site, including our Cookie Use.
						</div>
					</div>

					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-12 col-md-6">
							<input type="submit" value="Register" name="register"
								id="registerButton" class="btn btn-primary btn-block btn-lg"
								tabindex="7">
						</div>
						<div class="col-xs-12 col-md-6">
							<a href="./loginView.jsp"
								class="btn btn-success btn-block btn-lg">Sign In</a>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="t_and_c_m" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">Terms & Conditions</h4>
					</div>
					<div class="modal-body">
						<p>Hier werden die AGB eingefügt, welche zu bestätigen sind,
							bevor man sich registrieren kann.</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">I
							Agree</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>


	<footer>
		<br>
		<p>&copy; 2016 BW4S - FitnessSeite</p>
	</footer>
	<!-- /container -->


</body>
</html>