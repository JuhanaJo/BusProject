<%-- 
    Document   : BusRoute
    Created on : Jun 19, 2021, 2:54:13 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Bus Ticket Reservation </title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="busStyle.css"/>
        <script src="https://kit.fontawesome.com/c29dc15947.js" crossorigin="anonymous"></script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <style>
        body
        {
        background-image: url(https://i.pinimg.com/originals/e9/37/b4/e937b41e96b2270eefdc7c2831307452.png);
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
    }
    
        body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: yellowgreen;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: aquamarine;
  color: black;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }

      body 
      { 
          padding-top:20px; 
      }
.panel-body .btn:not(.btn-block) 
{
    width:120px;
    margin-bottom:10px; 
}

    </style>
    
    <body>
        <header>
             <!-- Nav -->
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                <div>
                    <a href="" class="navbar-brand"> Online Bus Ticket Reservation </a>
                </div>
                <ul class="navbar-nav">
                    <li><a href=StaffHome.jsp class="nav-link">Bus route</a></li>
                </ul>
            </nav>
        </header><br>
        
<br><br>
    <!------ Include the above in your HEAD tag ---------->

   <div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-bookmark"></span> Admin Panel</h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                           <br>
                          <a href="BusRouteServlet?action=listBusroute" class="btn btn-warning btn-lg" role="button"><span class="glyphicon glyphicon-th-list"></span> <br/>All list of bus route</a>
                          <br>
                          <br>
                          <br>
                          <a href="BusRouteServlet?action=newroute" class="btn btn-info btn-lg" role="button"><span class="glyphicon glyphicon-plus"></span> <br/>Add new bus route</a>
                          <br>
                          <br>
                          <br>
                          <a href="BusRouteServlet?action=listBusroute" class="btn btn-danger btn-lg" role="button"><span class="glyphicon glyphicon-edit"></span> <br/>Edit the bus route</a>
                          <br><br><!-- comment -->
                          
                           
                        </div><!-- comment -->
                        
                        </div>
                    </div>
                </div>
            </div>
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
