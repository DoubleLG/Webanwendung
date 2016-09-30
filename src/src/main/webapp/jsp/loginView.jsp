<%@page import="de.hs_lu.beans.UserBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Second page</title>
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

    <form class="form-signin" id="loginForm" action="./loginAppl.jsp"
          method="get">

        <h2 class="form-signin-heading">Please sign in</h2>
        <hr class="colorgraph">
        <label for="inputUserId" class="sr-only">Username</label> <input
            type="text" name="userId" id="inputUserId" class="form-control"
            placeholder="Username" required autofocus> <label
            for="inputPassword" class="sr-only">Password</label> <input
            type="password" name="password" id="inputPassword"
            class="form-control" placeholder="Password" required>
        <div class="checkbox">
            <label> <input type="checkbox" value="remember-me">
                Remember me
            </label>
        </div>
        <hr class="colorgraph">
        <button class="btn btn-success btn-block btn-lg" type="submit"
                name="login" value="login">Sign in
        </button>

    </form>
    <form class="form-signin" action="./registerView.jsp">
        <p>Noch keinen Account? Hier, kostenlos registrieren!</p>
        <button class="btn btn-lg btn-primary btn-block" type="submit"
                name="register" value="register">Register
        </button>
    </form>
    <footer>
        <p>&copy; 2016 BW4S - FitnessSeite</p>
    </footer>
</div>
<!-- /container -->

</body>
</html>