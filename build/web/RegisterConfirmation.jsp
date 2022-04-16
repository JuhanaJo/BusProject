<%-- 
    Document   : RegisterConfirmation
    Created on : 15 Jun 2021, 11:52:17
    Author     : hfqhishk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="myFw" class="com.fws.fws" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Confirmation</title>
    </head>
    <body>
        <jsp:setProperty name="myFw" property="*"/>
        <%
            int result;
            
            Class.forName("com.mysql.jdbc.Driver");

            String myURL = "jdbc:mysql://localhost:3306/busticket";
            Connection myConnection = DriverManager.getConnection(myURL, "root","admin");

            String sInsertQry = "INSERT INTO staffbus(email,name, username, password) VALUES(?,?,?,?)";
            
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);

            myPS.setString(1, myFw.getEmail());
            myPS.setString(2, myFw.getName());
            myPS.setString(3, myFw.getUsername());
            myPS.setString(4, myFw.getPassword());
        

            result = myPS.executeUpdate();
            if(result>0){
                response.sendRedirect("Login.jsp");
            }else{
                response.sendRedirect("Register1.jsp");
            }
            
            myConnection.close();
            System.out.println(" ");
            System.out.println("Database connection is closed...!");
        %>
    </body>
</html>
