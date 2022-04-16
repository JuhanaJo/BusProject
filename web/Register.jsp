<%-- 
    Document   : Register
    Created on : 15 Jun 2021, 11:48:19
    Author     : hfqhishk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="web.css" media="screen">
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display";
  letter-spacing: 5px;
}

* {
  box-sizing: border-box;
  }

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>

<div class="w3-top">
  <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
    <a href="Homepage.jsp" class="w3-bar-item w3-button"><img src="images/Pngtreeshipcargoshipcontainer_5194106.png" alt="HTML tutorial" style="width:42px;height:42px;"></a>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
    </div>
  </div>
</div>

 
    
  <div class="container">
      <br><br><br>
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    
    <hr>
    
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>

    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter Company Name" name="name" id="name" required>

    <label for="username"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="username" id="username" required>
    
    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" id="password" required>
    
    
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="Login.jsp">Sign in</a>.</p>
  </div>
    
    </form>

</body>
</html>
