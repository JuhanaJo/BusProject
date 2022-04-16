<%-- 
    Document   : bookingList
    Created on : Jun 20, 2021, 11:58:59 PM
    Author     : ASUS
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Employee Management Application</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/c29dc15947.js" crossorigin="anonymous"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            .navbar-brand {
        padding-right: 80px;
        font-family: Andale Mono, monospace;
        font-size: 20px;
    }
        </style>
    </head>
    
    <body style="background: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url(https://i.pinimg.com/originals/e9/37/b4/e937b41e96b2270eefdc7c2831307452.png);">
        <header>
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                <div>
                    <a href="" class="navbar-brand">Online Bus Ticket Reservation</a>
                </div>
                
                <ul class="navbar-nav">
                <li><a href="StaffHome.jsp" class="nav-link">Booking List</a></li>
            </ul>
            
            </nav>
        </header>
        <br>
        
         <div class="row">
            
            <div class="container">
                <h3 class="text-center" style="color:white;">List of Booking</h3>
                <hr>
                
                <br>
                <form action="BookingServlet?action=list">
                <table class="table table-bordered" style="background-color: white; color: black" >
                    <thead>
                        <tr>
                            <th scope="col" style="text-align:center;">ID</th>
                            <th scope="col" style="text-align:center;">Departure</th>
                            <th scope="col" style="text-align:center;">Destination</th>
                            <th scope="col" style="text-align:center;">Date</th>
                            <th scope="col" style="text-align:center;">Customer Name</th>
                            <th scope="col" style="text-align:center;">IC No</th>
                            <th scope="col" style="text-align:center;">Phone No</th>
                            <th scope="col" style="text-align:center;">Total Passenger</th>
                            <th scope="col" style="text-align:center;">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="booking" items="${listBooking}">
                            <tr>
                                <td style="text-align:center;">
                                    <c:out value="${booking.id}"/>
                                </td>
                                <td style="text-align:center;">
                                    <c:out value="${booking.departure}"/>
                                </td>
                                <td style="text-align:center;">
                                    <c:out value="${booking.destination}"/>
                                </td>
                                <td style="text-align:center;">
                                    <c:out value="${booking.date}"/>
                                </td>
                                <td style="text-align:center;">
                                    <c:out value="${booking.passName}"/>
                                </td>
                                <td style="text-align:center;">
                                    <c:out value="${booking.passICNo}"/>
                                </td>
                                <td style="text-align:center;">
                                    <c:out value="${booking.passPhoneNo}"/>
                                </td>
                                <td style="text-align:center;">
                                    <c:out value="${booking.totalPassenger}"/>
                                </td>
                                <td><a class="btn btn-sm btn-primary" href="BookingServlet?action=editb&id=<c:out value='${booking.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <a class="btn btn-sm btn-danger" href="BookingServlet?action=deleteb&id=<c:out value='${booking.id}'/>">Delete</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table></form>
            </div>
        </div>
                            <br><br>
        
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
