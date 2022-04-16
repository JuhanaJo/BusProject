<%-- 
    Document   : BusRoute
    Created on : Jun 14, 2021, 1:12:47 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        background-color: #EAE7DC;
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
    }
    .btn-success{
        padding-top: 10px;
        padding-bottom: 10px;
        padding-left:  26px;
        padding-right: 26px;
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
             <!-- Nav -->
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                <div>
                    <a href="" class="navbar-brand"> Online Bus Ticket Reservation </a>
                </div>
                <ul class="navbar-nav">
                    <li><a href="StaffHome.jsp" class="nav-link">STAFF</a></li>
                </ul>
            </nav>
        </header><br>
        <!-- Input form -->
        <div class="container col-md-5">
            <div class="card">
                <div class="card-body" id="busform">
                    <!-- bus.___ kita ambik dari existingBus kt showEditFrom dalam Servlet -->
                    <c:if test="${existbus != null}">
                        <form action="update" method="post" id="myform">
                    </c:if>
                            
                    <c:if test="${existbus == null}">
                        <form action="insert" method="post" id="myform">
                    </c:if>
                            
                    <h2>
                        <c:if test="${existbus != null}">
                        Edit Bus Details
                    </c:if>
                            
                    <c:if test="${existbus == null}">
                        Add New Bus
                    </c:if>
                    </h2>
                            
                    <c:if test="${existbus != null}">
                        <input type="hidden" name="busNo" value="<c:out value='${existbus.busNo}' />" />
                    </c:if>
                        
                    <fieldset class="form-group" style="padding-top: 20px;">
                        <label>Bus Plat No </label>
                        <input type="text" value="<c:out value='${existbus.platNo}' />"
                               class="form-control" id="platno" name="platNo" required="required" 
                               placeholder="E.g : QSS1234" />
                        <span id="message" style="color:red;"></span>
                        
                    </fieldset>
                    
                               
                    <fieldset class="form-group">
                        <label>Bus Type</label>
                        <input list="typeList" id="bustype" class="form-control" name="busType" value="<c:out value='${existbus.busType}' />" />
                        <datalist id="typeList">
                            <option value="44-Seaters">
                            <option value="20-Seaters">
                        </datalist>
                    </fieldset>
                               
                    <fieldset class="form-group">
                        <label>Bus Status</label>
                        <input list="statusList" id="busstatus" class="form-control" name="busStatus" value="<c:out value='${existbus.busStatus}' />" />
                        <datalist id="typeList">
                            <option value="In Good Condition">
                            <option value="In Maintenance">
                            <option value="Need to Service">
                        </datalist>
                    </fieldset>
                               
                    <fieldset class="form-group">
                        <c:set var="av" value="availability" />
                        <label>Bus Availability</label>
                        <div class="form-check" style="padding-left: 60px;">
                            <input class="form-check-input" type="radio" name="availability" value="Available" 
                                   <c:if test="${av.contains('Available')}">checked="checked" </c:if> />
                            <label class="form-check-label" for="flexRadioDefault1">Available</label> 
                        </div>
                        <div class="form-check" style="padding-left: 60px;">
                            <input class="form-check-input" type="radio" name="availability" value="Not Available" 
                                   <c:if test="${av.contains('Not Available')}">checked="checked" </c:if> />
                            <label class="form-check-label" for="flexRadioDefault2">Not Available</label>
                        </div>
                    </fieldset>          
                            <button type="submit" class="btn btn-success" onclick="validate()">Save</button>
                            <script type="text/javascript">
                                function validate(){  
    var platno = document.getElementById("platno").value;
    if (platno.length>7){ 
        alert("Please insert PlatNo without space, please insert records again");
        //txt = "Please input PlatNo without space";
        //document.getElementById("message").innerHTML = txt;
    } else
        alert("Succeed!");
    };
    </script>
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
