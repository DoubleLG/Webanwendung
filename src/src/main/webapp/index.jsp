<%@page import="de.hs_lu.beans.UserBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
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
            <a class="navbar-brand" href="#">FitnessSeite Neu</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <form class="navbar-form navbar-right" action="./jsp/loginAppl.jsp"
                  method="get">
                <div class="form-group">
                    <input type="text" name="userId" placeholder="Username" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" name="password" placeholder="Password" class="form-control">
                </div>
                <button type="submit" class="btn btn-success" name="login"
                        value="login">Sign in
                </button>
            </form>
        </div>
        <!--/.navbar-collapse -->
    </div>
</nav>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
    <div class="container">
        <h1 align="center">Hello, world!</h1>
        <p>Dieses ist unsere vorläufige Internetseite, welche von
            OpenShift gehosted, eine MySQL-DB einsetzt und das
            Bootstrap-Framework für das Design nutzt.</p>
        <p>
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn
                more &raquo;</a>
        </p>
    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h2>Heading</h2>
            <p>Donec id elit non mi porta gravida at eget metus. Fusce
                dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
                ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
                magna mollis euismod. Donec sed odio dui.</p>
            <p>
                <a class="btn btn-default" href="#" role="button">View details
                    &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Heading</h2>
            <p>Donec id elit non mi porta gravida at eget metus. Fusce
                dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
                ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
                magna mollis euismod. Donec sed odio dui.</p>
            <p>
                <a class="btn btn-default" href="#" role="button">View details
                    &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Heading</h2>
            <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
                egestas eget quam. Vestibulum id ligula porta felis euismod semper.
                Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
                nibh, ut fermentum massa justo sit amet risus.</p>
            <p>
                <a class="btn btn-default" href="#" role="button">View details
                    &raquo;</a>
            </p>
        </div>
    </div>

    <hr>

    <footer>
        <p>&copy; 2016 BW4S - FitnessSeite</p>
    </footer>
</div>
<!-- /container -->
</body>
</html>