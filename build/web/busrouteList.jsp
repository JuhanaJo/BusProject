<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bus Route Application</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/c29dc15947.js" crossorigin="anonymous"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
    .container .row {
        margin: auto;        
        display: grid;  
        justify-content: center;  
        align-items: center; 
    }
    
    footer {
        position: absolute;
        width: 100%;
    }
    
    fieldset label {
        font-size: 18px;
    }
        </style>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                <div>
                    <a href="" class="navbar-brand"> Online Bus Ticket Reservation </a>
                </div>
                <ul class="navbar-nav">
                    <li><a href="BusRoute.jsp" class="nav-link">Bus route</a></li>
                </ul>
            </nav>
        </header><br>
        <div class="row">
        <div class="container">    
            <h3 class="text-center" style="color:white;">List of Bus Route</h3>
            <hr>
            <div class="add text-left">
                <a href="BusRouteServlet?action=newroute" class="btn btn-success" style="padding-left:20px;padding-right: 20px;">
                    <i class="fas fa-plus"></i>&nbsp; Add New Bus Route</a>
            </div><br>
            
          <div class="card">  
              <form action="BusRouterServlet?action=listBusroute">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col" style="text-align:center;">ID</th>
                        <th scope="col" style="text-align:center;">Departure</th>
                        <th scope="col" style="text-align:center;">Destination</th>
                        <th scope="col" style="text-align:center;">Depart Date</th>
                        <th scope="col" style="text-align:center;">Depart Time</th>
                        <th scope="col" style="text-align:center;">Bus No</th>
                        <th scope="col" style="text-align:center;">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="busroute" items="${listBusroute}">
                        <tr>
                            <td style="text-align:center;padding-top:14px;">
                                <c:out value="${busroute.id}" />
                            </td>
                            <td style="text-align:center;padding-top:14px;">
                                <c:out value="${busroute.departure}" />
                            </td>
                            <td style="text-align:center;padding-top:14px;">
                                <c:out value="${busroute.destination}" />
                            </td>
                            <td style="text-align:center;padding-top:14px;">
                                <c:out value="${busroute.date}" />
                            </td>
                            <td style="text-align:center;padding-top:14px;">
                                <c:out value="${busroute.time}" />
                            </td>
                            <td style="text-align:center;padding-top:14px;">
                                <c:out value="${busroute.busno}" />
                            </td>
                            <td style="text-align:center;padding-top:14px;">
                                <a class="btn btn-sm btn-primary" href="BusRouteServlet?action=editroute&id=<c:out value='${busroute.id}'/>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
                                <a class="btn btn-sm btn-danger" href="BusRouteServlet?action=deleteroute&id=<c:out value='${busroute.id}'/>">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table></form>
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
