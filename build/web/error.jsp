<%-- 
    Document   : error
    Created on : Jun 20, 2021, 7:27:53 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true" %>
<%@page language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
    <center>
        <h1>Error</h1>
        <h2><%=exception.toString() %><br/></h2>
    </center>
    </body>
</html>
