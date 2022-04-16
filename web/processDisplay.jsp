<%-- 
    Document   : processDisplay
    Created on : Jun 22, 2021, 1:07:25 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.*"%>
<%@page import="com.Model.Booking" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Management Application</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/c29dc15947.js" crossorigin="anonymous"></script>
        <style>
            .table th{
                width: 25%;
            }
            .navbar-brand {
        padding-right: 80px;
        font-family: Andale Mono, monospace;
        font-size: 20px;
    }
        </style>
    </head>
    <body>
        <body style="background: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url(https://i.pinimg.com/originals/e9/37/b4/e937b41e96b2270eefdc7c2831307452.png);">
        <header>
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                <div>
                    <a href="" class="navbar-brand">Online Bus Ticket Reservation</a>
                </div>
                
                <ul class="navbar-nav">
                <li><a href="home.jsp" class="nav-link">Booking List</a></li>
            </ul>
            
            </nav>
        </header>
        <br>
        <div class="row">
            
            <div class="container">
                <h3 class="text-center" style="color:#f2f2f2;">Booking Details</h3>
                <hr>
                <br>
                <table class="table" style="background-color: white; color: black;" >
        
                    <jsp:useBean id="mybooking" class="com.Model.Booking" scope="request"/>
        <jsp:setProperty name="mybooking" property="*"/>
 
        <%
            int result;
            
            Class.forName("com.mysql.jdbc.Driver");
            String myURL = "jdbc:mysql://localhost:3306/busticket";
            Connection myConnection = DriverManager.getConnection(myURL,"root","admin");
            Statement s=myConnection.createStatement();
            String sInsertQry = "INSERT INTO booking (departure, destination, date, passName, passICNo, passPhoneNo, totalPassenger ) "
                    + "VALUES(?,?,?,?,?,?,?);";
            PreparedStatement myPs = myConnection.prepareStatement (sInsertQry);

            myPs.setString(1, mybooking.getdeparture());
            myPs.setString(2, mybooking.getdestination());
            myPs.setString(3, mybooking.getDate());
            myPs.setString(4, mybooking.getpassName());
            myPs.setString(5, mybooking.getpassICNo());
            myPs.setString(6, mybooking.getpassPhoneNo());
            myPs.setInt(7, mybooking.gettotalPassenger());
    
            result = myPs.executeUpdate();
            if (result > 0) {
                //out.println("<table class='table table-bordered' style='background-color: white; color: black;' >");
                out.println("<tr>");
                out.println("<th>" +"Departure : " +"</th>");
                out.println("<td>" +mybooking.getdeparture() +"</td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<th>" +"Destination : " +"</th>");
                out.println("<td>" +mybooking.getdestination() +"</td>");
                out.println("</tr>");
                out.println("<th>" +"Date : " +"</th>");
                out.println("<td>" +mybooking.getDate() +"</td>");
                out.println("</tr>");
                out.println("<th>" +"Customer Name : " +"</th>");
                out.println("<td>" +mybooking.getpassName() +"</td>");
                out.println("</tr>");
                out.println("<th>" +"IC No : " +"</th>");
                out.println("<td>" +mybooking.getpassICNo() +"</td>");
                out.println("</tr>");
                out.println("<th>" +"Phone No : " +"</th>");
                out.println("<td>" +mybooking.getpassPhoneNo() +"</td>");
                out.println("</tr>");
                out.println("<th>" +"Total Passenger : " +"</th>");
                out.println("<td>" +mybooking.gettotalPassenger() +"</td>");
                out.println("</tr>");

            }
            myConnection.close();
            System.out.println("");
        %>
    
                <tr>
                    <td></td>
                    <td style="text-align: right;"><a class="btn btn-sm btn-success" href="BookingServlet?action=thankyou" onclick="confirm()">Confirm</a></td>
                </tr>
                        
                </table>
               <script type="text/javascript">
                            function confirm(){
                                alert("Your ticket have been added into our records. Thank you for reserving ticket with us !");
                            };
                            
                            function cancel(){
                                alert("Your have cancel your reservation.");
                            };
                        </script>
            </div>
        </div><br><br>
        
    </body>
    <footer class="page-footer font-small pt-4" style="background-color: tomato">
  <!-- Footer Links -->
  <div class="container-fluid text-center">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col">

        <!-- Content -->
        <h5 class="text-uppercase">Services</h5>
        <p>QuickSar Sdn Bhd. provide the online bus reservation services for you which you can done it anytime for 24hours.</p>
        
          <a class="fb-ic">
            <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3"> </i>
          </a>
          <a class="tw-ic">
            <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3"> </i>
          </a>
          <a class="gplus-ic">
            <i class="fab fa-google-plus-g fa-lg white-text mr-md-5 mr-3"> </i>
          </a>
          <a class="ins-ic">
            <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3"> </i>
          </a>
        </div>

      <hr class="clearfix w-100 d-md-none pb-3">

      <div class="col">

        <!-- Links -->
        <h5 class="text-uppercase">categories</h5>
        <ul class="list-unstyled">
          <li>
            <a href="#!">Product</a>
          </li>
          <li>
            <a href="#!">About</a>
          </li>
          <li>
            <a href="#!">Portfolio</a>
          </li>
          <li>
            <a href="#!">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="footer-copyright text-center py-3">&copy; 2020 Copyright: QuickSar Sdn Bhd.</div>
</footer>
</html>
