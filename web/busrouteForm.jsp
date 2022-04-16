<%-- 
    Document   : busrouteForm
    Created on : Jun 19, 2021, 1:59:38 AM
    Author     : USER
--%>

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
    </head>
    <style>
        body{
        background-color: #EAE7DC;
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
    <body>
        <header>
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                <div>
                    <a href="" class="navbar-brand"> Online Bus Ticket Reservation</a>
                </div>
                <ul class="navbar-nav">
                    <li><a href="BusRoute.jsp" class="nav-link">Bus route</a></li>
                </ul>
            </nav>
        </header><br>
        <div class="container col-md-5">
            <div class="card">
                <div class="card-body">
                    <c:if test="${busroute != null}">
                        <form action="BusRouteServlet?action=updateroute" method="post">
                    </c:if>
                            
                    <c:if test="${busroute == null}">
                        <form action="BusRouteServlet?action=insertroute" method="post">
                    </c:if>
                            
                    <h2>
                        <c:if test="${busroute != null}">
                        Edit Bus route
                    </c:if>
                            
                    <c:if test="${busroute == null}">
                        Add New Bus route
                    </c:if>
                    </h2>
                            
                    <c:if test="${busroute != null}">
                        <input type="hidden" name="id" value="<c:out value='${busroute.id}' />" />
                    </c:if>
                    
                    <fieldset class="form-group">
                        <label>Departure</label>
                        <input type="text" value="<c:out value='${busroute.departure}' />"
                               class="form-control" readonly/>
                        <input list="departureList" id="departure" class="form-control" name="departure" />
                        <datalist id="departureList">
                            <option value="Bintulu">
                            <option value="Kuching">
                            <option value="Miri">
                            <option value="Mukah">
                            <option value="Pontianak">
                            <option value="Serian">
                            <option value="Sibu">
                            <option value="Tebedu">
                        </datalist>
                    </fieldset>
                               
                    <fieldset class="form-group">
                        <label>Destination</label>
                        <input type="text" value="<c:out value='${busroute.destination}' />"
                               class="form-control" readonly />
                        <input list="destinationList" id="destination" class="form-control" name="destination" />
                        <datalist id="destinationList">
                            <option value="Bintulu">
                            <option value="Kuching">
                            <option value="Miri">
                            <option value="Mukah">
                            <option value="Pontianak">
                            <option value="Serian">
                            <option value="Sibu">
                            <option value="Tebedu">
                        </datalist>
                    </fieldset>
                               
                    <fieldset class="form-group">
                        <label>Departure Date</label>
                        <input type="date" value = "<c:out value='${busroute.date}'/>" 
                               class="form-control" name="date" placeholder="yyyy/mm/dd" required="required" />
                    </fieldset>
                               
                    <fieldset class="form-group">
                        <label>Departure Time</label>
                        <input type="time" value="<c:out value='${busroute.time}' />"
                               class="form-control" name="time" placeholder="hh:mm"/>
                    </fieldset> 
                               
                    <fieldset class="form-group">
                        <label>Bus No </label>
                        <input type="text" value="<c:out value='${busroute.busno}' />"
                               class="form-control" name="busno" />
                    </fieldset>
                               
                    <button type="submit" class="btn btn-success">Save</button>
                        </form>
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
