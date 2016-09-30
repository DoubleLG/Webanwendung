<%@page import="de.hs_lu.beans.UserBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
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

<%!
    public String denullify(String s) {
        return (s == null) ? "" : s;

    }
%>

<%
    String userId = request.getParameter("userId");
    String password = request.getParameter("password");

    String register = this.denullify(request.getParameter("register"));
    String login = this.denullify(request.getParameter("login"));

    if (login.equals("login")) {
        user.setUserId(userId);
        // Hier wird lediglich das ungehashte Passwort übergeben, damit dieses mit dem entsprechenden Hash DB-seitig verglichen werden kann
        user.setPasswordUnhashed(password);
        boolean idPwExists = false;
        try {
            idPwExists = user.checkUserIdPassword();
        } catch (Exception e) {
            System.out.println("Fehler beim Aufruf des Funktionschecks checkUserIdPassword!");
            response.sendRedirect("./loginView.jsp");
        }

        if (idPwExists) {
            System.out.println("Erfolgreicher Login");
            response.sendRedirect("./dashboardView.jsp");
        } else {
            System.out.println("No combination found!");
            response.sendRedirect("./loginView.jsp");
        }

    } else if (register.equals("register")) {

        response.sendRedirect("./registerView.jsp");
    }
%>


<!--  Funktion einfuegen, die prueft ob korrekte Kombination aus Username und Password
    wenn nein: redirect to signin page
    wenn ja: redirect to user main page-->

</body>
</html>