<%-- 
    Document   : StaffFirstPage
    Created on : Jun 13, 2021, 10:18:41 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Bus Ticket Reservation </title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
        <script src="https://kit.fontawesome.com/c29dc15947.js" crossorigin="anonymous"></script>
        <style>
            body{
        background-image: url(https://i.pinimg.com/originals/e9/37/b4/e937b41e96b2270eefdc7c2831307452.png);
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
    }
    
    .navbar-brand {
        padding-right: 80px;
        font-family: Andale Mono, monospace;
        font-size: 20px;
    }
    .row .btn-secondary{
        padding: 30px;
        text-align: center;
        font-size: 18px;
        height: 120px;
        width: 220px;
        margin-top:  22px;
        margin-bottom: 28px;
    }
        

    .container .row {
        margin: auto;        
        display: grid;  
        justify-content: center;  
        align-items: center; 
    }
    
    footer {
        position: absolute;
        right: 0;
        width: 100%;
    }
        </style>
    </head>
    <body>
        <header>
             <!-- Nav -->
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                <div>
                    <a href="" class="navbar-brand"> Online Bus Ticket Reservation </a>
                </div>
                <ul class="navbar-nav">
                    <li><a href="<%=request.getContextPath()%>/product" class="nav-link">STAFF</a></li>
                </ul>
            </nav>
        </header><br>
        <div class="container">    
        <div class="row align-items-center">

            <div class="col-md-3 col-sm-6">
            	<a href="http://localhost:8080/Bus Project/listBus" class="btn btn-secondary"><i class="fas fa-bus"></i><br>Bus Details</a>
            </div>
            <div class="col-md-3 col-sm-6">
            	<a href="BusRoute.jsp" class="btn btn-secondary"><i class="fas fa-clipboard-list"></i><br>Bus Route</a>
            </div>
            <div class="col-md-3 col-sm-6">
            	<a href=BookingServlet?action=list class="btn btn-secondary"><i class="fas fa-info-circle"></i><br>Booking Details</a>
            </div>
        </div>     
        </div><br><br>
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
    </body>
</html>
