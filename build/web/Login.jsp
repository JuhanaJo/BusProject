<%-- 
    Document   : Login
    Created on : Jun 20, 2021, 7:12:24 PM
    Author     : USER
--%>

<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<html>
  <head>
      <script src="https://kit.fontawesome.com/c29dc15947.js" crossorigin="anonymous"></script>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
    body#LoginForm{ background-image:url("https://image.winudf.com/v2/image1/Y29tLnRnLm9mZi5yb2FkLmJ1cy5kcml2ZS5zaW11bGF0b3Jfc2NyZWVuXzJfMTU0ODEwMTI5OF8wNjk/screen-3.jpg?fakeurl=1&type=.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}

.form-heading { color:#fff; font-size:23px;}
.panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}
.panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
.login-form .form-control {
  background: #f7f7f7 none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  border-radius: 4px;
  font-size: 14px;
  height: 50px;
  line-height: 50px;
}
.main-div {
  background: #ffffff none repeat scroll 0 0;
  border-radius: 2px;
  margin: 10px auto 30px;
  max-width: 38%;
  padding: 50px 70px 70px 71px;
}

.login-form .form-group {
  margin-bottom:10px;
}
.login-form{ text-align:center;}
.forgot a {
  color: #777777;
  font-size: 14px;
  text-decoration: underline;
}
.login-form  .btn.btn-primary {
  background: #f0ad4e none repeat scroll 0 0;
  border-color: #f0ad4e;
  color: #ffffff;
  font-size: 14px;
  width: 100%;
  height: 50px;
  line-height: 50px;
  padding: 0;
}
.forgot {
  text-align: left; margin-bottom:30px;
}
.botto-text {
  color: #ffffff;
  font-size: 14px;
  margin: auto;
}
.login-form .btn.btn-primary.reset {
  background: #ff9900 none repeat scroll 0 0;
}
.back { text-align: left; margin-top:10px;}
.back a {color: #444444; font-size: 13px;text-decoration: none;}


</style>
<!------ Include the above in your HEAD tag ---------->
  </head>
  <form action="processLogin.jsp" method="post">
<body id="LoginForm">
    <br><!-- comment -->
    <br>
    <br>
<div class="container">
<div class="login-form">
<div class="main-div">
    <div class="panel">
        <br><!-- comment -->
        <i class="fa fa-bus" style="font-size:70px;" aria-hidden="true"></i><br><br>
        <h2>STAFF LOGIN</h2><br>
   </div>
    <form id="Login">

        <div class="form-group">
            <i class="fas fa-user"></i>
            <input type="text" placeholder="Enter Username" name="username" required>

        </div>

        <div class="form-group">
            <i class="fas fa-key"></i>
          <input type="password" placeholder="Enter Password" name="password" required>

        </div>
        <div class="forgot">
            <center>
        <a href="Register1.jsp">Register Here</a>
            </center>
</div>
        <button type="submit" class="btn btn-primary">Login</button>

    </form>
    </div>
<p class="botto-text"> QUICKSAR SDN BHD</p>
</div></div></div>


</body>
</html>
