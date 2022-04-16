<%-- 
    Document   : bookingForm2
    Created on : Jun 21, 2021, 7:51:13 AM
    Author     : ASUS
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Form</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
                <li><a href="" class="nav-link">Booking Form</a></li>
            </ul>
                
            </nav>
        </header>
                <br>
                <div class="container col-md-5">
                    <div class="card">
                    <div class="card-body">
                        <c:if test="${booking != null}">
                            <form action="BookingServlet?action=updateb" method="post">
                        </c:if>
                        <c:if test="${booking == null}">
                            <form action="processDisplay.jsp" method="post">
                        </c:if> 
                                
                                <h2>
                                    <c:if test="${booking !=null}">
                                        Edit Booking
                                    </c:if>
                                    <c:if test="${booking == null}">
                                        Add Booking Details
                                    </c:if>
                                </h2>
                                <c:if test="${booking != null}">
                                    <input type="hidden" name="id" value="<c:out value='${booking.id}'/>"/>
                                </c:if>
                                <fieldset class="form-group">
                                        <label>Departure</label>
                                        <input type="" value="<c:out value='${booking.departure}'/>" class="form-control" readonly>
                                        <input list="departureList" id="departure" class="form-control" name="departure">
                                        <datalist id="departureList">
                                            <option value="BINTULU">
                                            <option value="KUCHING">
                                            <option value="MIRI">
                                            <option value="SIBU">
                                            <option value="MUKAH">
                                            <option value="PONTIANAK">
                                            <option value="SARIKEI">
                                            <option value="SINGKAWANG">
                                        </datalist>
                                    </fieldset>
                                        
                                    <fieldset class="form-group">
                                        <label>DESTINATION</label>
                                        <input type="" value="<c:out value='${booking.destination}'/>" class="form-control" readonly>
                                        <input list="destinationList" id="destination" class="form-control" name="destination">
                                        <datalist id="destinationList">
                                            <option value="BINTULU">
                                            <option value="KUCHING">
                                            <option value="MIRI">
                                            <option value="SIBU">
                                            <option value="MUKAH">
                                            <option value="PONTIANAK">
                                            <option value="SARIKEI">
                                            <option value="SINGKAWANG">
                                        </datalist>
                                    </fieldset>
                                   
                                    <fieldset class="form-group">
                                        <label>Date</label><input type="date" value="<c:out value='${booking.date}'/>"
                                                                           class="form-control" name="date" required="required">
                                    </fieldset>
                                                                           
                                <fieldset class="form-group">
                                        <label>Name</label><input type="text" value="<c:out value='${booking.passName}'/>"
                                                                           class="form-control" name="passName" required="required">
                                    </fieldset>
                                   
                                    <fieldset class="form-group">
                                        <label>IC Number</label><input type="text" value="<c:out value='${booking.passICNo}'/>"
                                                                           class="form-control" name="passICNo" required="required">
                                    </fieldset>
                                    <fieldset class="form-group">
                                        <label>Phone Number</label><input type="text" value="<c:out value='${booking.passPhoneNo}'/>"
                                                                           class="form-control" name="passPhoneNo" required="required">
                                    </fieldset>
                                   
                                    <fieldset class="form-group">
                                        <label>Total Passenger</label><input type="number" value="<c:out value='${booking.totalPassenger}'/>"
                                                                           class="form-control" name="totalPassenger" required="required">
                                    </fieldset> <br>
           
                                    
                                    <button type="submit" class="btn btn-success">Save</button>
                            </form>
       
                    </div>
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