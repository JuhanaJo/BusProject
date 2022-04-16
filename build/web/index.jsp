<%-- 
    Document   : index
    Created on : Jun 13, 2021, 10:11:18 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management Application</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
         
         <style>
             body {
  background: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url(https://i.pinimg.com/originals/e9/37/b4/e937b41e96b2270eefdc7c2831307452.png);
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  color: white;
  position: relative;
}
         </style>
         
    </head>
    <body>
        <div class="container" style="text-align: center"><br><br><br><br><br>
        <h1> Booking Ticket</h1><br>
        
        <ul>
            
            <li><a href="BookingServlet?action=newb">Add a New Bus Booking</a></li>
           
        </ul>
        </div>

    </body>
</html>
