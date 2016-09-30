<%@page import="de.hs_lu.beans.UserBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
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
    String email = request.getParameter("email");
    String userName = request.getParameter("first_name") + "" + request.getParameter("last_name");
    String password = request.getParameter("password");
    boolean userWurdeAngelegt = false;

		/* 		// Hier werden zusätzliche Checks auf die übergebenen Parameter durchgeführt */
    String register = this.denullify(request.getParameter("register"));

    if (register.equals("Register")) {
        user.setUserId(userId);
        user.setUserName(userName);
        user.setPassword(password);
        user.setEmail(email);
        user.setActive("Y");
        user.setAdmin("N");

        try {

            userWurdeAngelegt = user.insertUserIfNotExists();

        } catch (Exception e) {
            e.printStackTrace();
        }

        if (userWurdeAngelegt) {
            response.sendRedirect("./loginView.jsp");
        } else {
            response.sendRedirect("./registerView.jsp");
        }
    }
%>


</body>
</html>