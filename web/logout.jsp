<%-- 
    Document   : logout
    Created on : Jan 16, 2017, 7:27:42 PM
    Author     : sohamkapoor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Logout </title>
    </head>
    <body>
        <%
            if (session != null) {
                session.setMaxInactiveInterval(1);
            }
            response.sendRedirect("http://localhost:8080/gas/index.jsp");
        %>
    </body>
</html>
