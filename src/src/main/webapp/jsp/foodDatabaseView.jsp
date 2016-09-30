<%@page import="de.hs_lu.beans.FoodTableBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Food Database</title>
    <!-- Im Folgenden werden die Importe organisiert -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!--  own customized stylesheet -->
    <link rel="stylesheet" href="../css/ownCustomization.css">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"
            integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
    <!-- Include DataTables via CDN - CSS and JS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jqc-1.12.3/dt-1.10.12/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/jqc-1.12.3/dt-1.10.12/datatables.min.js"></script>

    <!-- Include own JS for DataTable implementation -->
    <script type="text/javascript" src="../js/appDataTable.js"></script>
</head>

<body>
<jsp:useBean id="fdb" class="de.hs_lu.beans.FoodTableBean" scope="session"/>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../index.jsp">FitnessSeite</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Settings</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="#">Logout</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>

<!-- Food Database Area -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="./dashboardView.jsp">Overview</a></li>
                <li class="active"><a href="./foodDatabaseView.jsp">Food Database</a></li>
                <li><a href="myFoodsView.jsp">My Foods</a></li>
                <li><a href="#">Analytics</a></li>
                <li><a href="#">Export</a></li>
            </ul>
        </div>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Food Database</h1>

            <div class="container-fluid">


                <h2 class="sub-header">Section title</h2>
                <table id="allFoodsTable" class="display" cellspacing="0" width="100%">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Food</th>
                        <th>Kcal</th>
                        <th>Kjoule</th>
                        <th>Fat</th>
                        <th>Carbohydrates</th>
                        <th>Bread Unit</th>
                        <th>Protein</th>
                        <th>Category</th>
                    </tr>
                    </thead>

                    <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>Food</th>
                        <th>Kcal</th>
                        <th>Kjoule</th>
                        <th>Fat</th>
                        <th>Carbohydrates</th>
                        <th>Bread Unit</th>
                        <th>Protein</th>
                        <th>Category</th>
                    </tr>
                    </tfoot>

                    <tbody>
                    <jsp:getProperty name="fdb" property="HTMLFromDB"/>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Ende FoodDatabase Area -->

<div class="container">
    <footer>
        <p>&copy; 2016 BW4S - FitnessSeite</p>
    </footer>
</div>
<!-- /container -->

</body>
</html>
