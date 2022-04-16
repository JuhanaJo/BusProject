<%-- 
    Document   : BusDetails
    Created on : Jun 14, 2021, 1:12:12 AM
    Author     : USER
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/c29dc15947.js" crossorigin="anonymous"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
        justify-content: center;  
        align-items: center; 
    }
    
    footer {
        position: absolute;
        right: 0;
        width: 100%;
    }
    fieldset label {
        font-size: 18px;
    }
    .table {
        margin: auto;
        text-align: center;
        margin-bottom: 20px;
    }
    
    .card-counter{
    box-shadow: 2px 2px 10px #DADADA;
    margin: 5px;
    padding: 20px 10px;
    background-color: #fff;
    height: 100px;
    border-radius: 5px;
    transition: .3s linear all;
  }

  .card-counter:hover{
    box-shadow: 4px 4px 20px #DADADA;
    transition: .3s linear all;
  }

  .card-counter.primary{
    background-color: #007bff;
    color: #FFF;
  }

  .card-counter.danger{
    background-color: #ef5350;
    color: #FFF;
  }  
  
  .card-counter.info{
    background-color: #26c6da;
    color: #FFF;
  }
  
  .card-counter i{
    font-size: 5em;
    opacity: 0.2;
  }

  .card-counter .count-numbers{
    position: absolute;
    right: 35px;
    top: 20px;
    font-size: 32px;
    display: block;
  }

  .card-counter .count-name{
    position: absolute;
    right: 35px;
    top: 65px;
    font-style: italic;
    text-transform: capitalize;
    opacity: 0.5;
    display: block;
    font-size: 18px;
  }
  .status {
      display: flex;
      justify-content: center;  
      margin-bottom: 30px;
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
        </header><br><br><br>
        
    <!-- card for in maintenance total -->
        <div class="row status">
            <div class="col-sm-3">
                <div class="card-counter primary" data-toggle="modal" data-target="#maintenance">
                    <i class="fas fa-tools"></i>
                    <span class="count-numbers">
                        <%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/busticket";
    Connection con = DriverManager.getConnection(url, "root", "admin");
    Statement statement=con.createStatement();
    String status = "In Maintenance";
    String sql ="select COUNT(*) from bus where busStatus='"+status+"'";
    ResultSet rs = statement.executeQuery(sql);
    String Countrow="";
    while (rs.next()){
        Countrow = rs.getString(1);
        out.println(Countrow);
    }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
%>
                    </span>
                    <span class="count-name">In Maintenance</span>
                </div>
            </div>
                    
        <!-- modal box for in maintenance -->            
                    <div class="modal fade" id="maintenance" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">    
      <div class="modal-header">
          <h4 class="modal-title">Bus In Maintenance </h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
      <div class="modal-body">
 
          <table class="table table-hover">
            <thead>
              <tr>
                  <th scope="col" style="text-align:center;">Bus No</th>
                <th scope="col" style="text-align:center;">Bus Plat No</th>
                <th scope="col" style="text-align:center;">Bus Type</th>
                <th scope="col" style="text-align:center;">Status</th>
              </tr>
            </thead>
            <tbody>

<%
try{
    Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/busticket";
    Connection con = DriverManager.getConnection(url, "root", "admin");
    Statement statement=con.createStatement();
    String sql ="select busNo, platNo, busType, busStatus from bus where busStatus='In Maintenance'";
    ResultSet resultSet = statement.executeQuery(sql);
    while(resultSet.next()){

%>
<tr>
<td><%=resultSet.getString("busNo") %></td>
<td><%=resultSet.getString("platNo") %></td>
<td><%=resultSet.getString("busType") %></td>
<td><%=resultSet.getString("busStatus") %></td>
</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
        
    </div>
        
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
                   
<!-- card for need service total -->
            <div class="col-sm-3">
                <div class="card-counter danger" data-toggle="modal" data-target="#service">
                    <i class="fas fa-exclamation-circle"></i>
                    <span class="count-numbers">
                        <%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/busticket";
    Connection con = DriverManager.getConnection(url, "root", "admin");
    Statement statement=con.createStatement();
    String status = "Need to Service";
    String sql ="select COUNT(*) from bus where busStatus='"+status+"'";
    ResultSet rs = statement.executeQuery(sql);
    String Countrow="";
    while (rs.next()){
        Countrow = rs.getString(1);
        out.println(Countrow);
    }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
%>
                    </span>
                    <span class="count-name">Need to Service</span>
                </div>
            </div>
                    
            <!-- modal box for need service -->
                    
            <div class="modal fade" id="service" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">    
      <div class="modal-header">
          <h4 class="modal-title">Bus Need to Service </h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
      <div class="modal-body">
 
        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col" style="text-align:center;">Bus No</th>
                <th scope="col" style="text-align:center;">Bus Plat No</th>
                <th scope="col" style="text-align:center;">Bus Type</th>
                <th scope="col" style="text-align:center;">Status</th>
              </tr>
            </thead>
            <tbody>

<%
try{
    Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/busticket";
    Connection con = DriverManager.getConnection(url, "root", "admin");
    Statement statement=con.createStatement();
    String sql ="select busNo, platNo, busType, busStatus from bus where busStatus='Need to Service'";
    ResultSet resultSet = statement.executeQuery(sql);
    while(resultSet.next()){

%>
<tr>
<td><%=resultSet.getString("busNo") %></td>
<td><%=resultSet.getString("platNo") %></td>
<td><%=resultSet.getString("busType") %></td>
<td><%=resultSet.getString("busStatus") %></td>
</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
        
    </div>
        
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>       
            
            <!-- card for total bus-->
                    
            <div class="col-sm-3">
      <div class="card-counter info">
        <i class="fas fa-bus"></i>
        <span class="count-numbers">
            <%
            String driver = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/busticket";
    try {
        Class.forName(driver);
    Connection con = DriverManager.getConnection(url, "root", "admin");
    Statement statement=con.createStatement();
    String sql ="select COUNT(*) from bus";
    ResultSet rs = statement.executeQuery(sql);
    String Countrow="";
    while (rs.next()){
        Countrow = rs.getString(1);
        out.println(Countrow);
    }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
%>
        </span>
        <span class="count-name">Total Bus</span>
        
      </div>
    </div>
        </div>
        <div class="row">
        <div class="container">    
        
            <div class="add text-left">
                <a href="<%=request.getContextPath()%>/new" class="btn btn-success" style="padding-left:20px;padding-right: 20px;">
                    <i class="fas fa-plus"></i>&nbsp; Add New Bus</a>
            </div>
            
          <div class="card">  
              <form action="listBus">
        <table id="allbus" class="table table-hover">
            <thead>
                <tr>
                    <th scope="col" style="text-align:center;">Bus No</th>
                <th scope="col" style="text-align:center;">Bus Plat No</th>
                <th scope="col" style="text-align:center;">Bus Type</th>
                <th scope="col" style="text-align:center;">Status</th>
                <th scope="col" style="text-align:center;">Availability</th>
                <th scope="col" style="text-align:center;">Actions</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="bus" items="${listBus}">
                        <tr>
                            <td style="padding-top:14px;"> <!-- car.____ sama name attribute kt java class-->
                                <c:out value="${bus.busNo}" />
                            </td>
                            <td style="padding-top:14px;">
                                <c:out value="${bus.platNo}" />
                            </td>
                            <td style="padding-top:14px;">
                                <c:out value="${bus.busType}" />
                            </td>
                            <td style="padding-top:14px;">
                                <c:out value="${bus.busStatus}" />
                            </td>
                            <td style="padding-top:14px;">
                                <c:out value="${bus.availability}" />
                            </td>
                            <td>
                                <a class="btn btn-sm btn-primary" href="edit?busNo=<c:out value='${bus.busNo}'/>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
                                <a class="btn btn-sm btn-danger" href="delete?busNo=<c:out value='${bus.busNo}'/>">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
            </tbody>
          </table></form>
    </div>
        </div>
        </div>
    <br><br>

    
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
