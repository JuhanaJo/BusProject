
<%-- 
    Document   : bookingForm
    Created on : Jun 20, 2021, 11:43:56 PM
    Author     : ASUS
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Bus Ticket Reservation </title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="busStyle.css"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
          
        <script src="https://kit.fontawesome.com/c29dc15947.js" crossorigin="anonymous"></script>
        
        <style>
img, form, button{
  display: block;
  margin-left: auto;
  margin-right: auto;
}

body {
  background: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url(https://i.pinimg.com/originals/e9/37/b4/e937b41e96b2270eefdc7c2831307452.png);
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  color: white;
  position: relative;
}

.square {
  height: 600px;
  width: 1000px;
  background: linear-gradient( rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7) );
  display: block;
  margin-left: auto;
  margin-right: auto;
}

.rowdest {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  padding: 0 4px;
}

.fadebck {
    background: linear-gradient( rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7) );
    width: 100%;
}

/* Create four equal columns that sits next to each other */
.column {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
  max-width: 25%;
  padding: 0 4px;
}

.column img {
  margin-top: 8px;
  vertical-align: middle;
  width: 100%;
}

/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 800px) {
  .column {
    -ms-flex: 50%;
    flex: 50%;
    max-width: 50%;
  }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    -ms-flex: 100%;
    flex: 100%;
    max-width: 100%;
  }
}

.mySlides {display: none;}
.mySlidesfirst {display: none;}

img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 2.5s;
  animation-name: fade;
  animation-duration: 2.5s;
}

@-webkit-keyframes fade {
  from {opacity: .1} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .1} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

.block {
  display: block;
  width: 100%;
  border: none;
  background-color: #04AA6D;
  color: white;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;
}

.block:hover {
  background-color: #ddd;
  color: black;
}

p {
                font-size: 18px;
            }
            
            #contact {
                background-color: #EAE7DC;
		overflow: hidden;
            }

#portfolio{
  overflow: hidden;
	
}

  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 200px;
    margin-top: 40px;
	margin-bottom: 20px;
  }

  .bg-grey {
    background-color: #f6f6f6;
  }

.columncard {
  float: left;
  width: 33.33%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.rowcard:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
}
  
</style>

    </head>
    <body data-spy="scroll" >
        <header>
             <!-- Nav -->
  
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    
                
                <div>
                    <a href="" class="navbar-brand">Online Bus Ticket Reservation </a>
                </div>
                <ul class="navbar-nav">
                    
                    <li><a href="#product" class="nav-link">PRODUCT</a></li>
                    <li><a href="#about" class="nav-link">ABOUT</a></li>
                    <li><a href="#portfolio" class="nav-link">PORTFOLIO</a></li>
                    <li><a href="#contact" class="nav-link">CONTACT</a></li>
                </ul>
            </nav>
        </header>
        <!-- Input form -->
        <div>
            <img class="mySlidesfirst" src="https://sarawaktourism.com/v2/wp-content/uploads/2019/02/electric-bus.jpg" style="width:100%">
            <img class="mySlidesfirst" src="https://sc01.alicdn.com/kf/H41acd8cf78e14c9aa29d04c3e73daed6I/200211651/H41acd8cf78e14c9aa29d04c3e73daed6I.jpg" style="width:100%">
            <img class="mySlidesfirst" src="https://www.bookaway.com/media/files/5e3aa327d3ccefb9baa60150.jpeg" style="width:100%">
        </div> 
            <script>
           var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlidesfirst");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
<br><br>
               <br>
               
                    <br><br><br><br><br>
                    
                    <button class="block"><a href="BookingForm.jsp">Book Now</a></button>
                    
                    <br><br><br>
           <div class="fadebck">
           
           <h1 style="text-align: center;">Sarawak Popular Destinations</h1>
           <br>
         <div class="rowdest"> 
  <div class="column">
      <img src="https://www.borneotalk.com/wp-content/uploads/2019/12/bintulu-city-02.jpg" style="width:100%">Bintulu
      <img src="http://ttgasia.2017.ttgasia.com/wp-content/uploads/sites/2/2017/05/kuching-sarawak.jpg" style="width:100%">Pontianak
  </div>
             
  <div class="column">
    <img src="https://afhc2018.sarawak.gov.my/modules/web/image_show.php?id=366" style="width:100%">Kuching
    <img src="https://www.borneotalk.com/wp-content/uploads/2021/04/Sarikei_Sarawak.jpg" style="width:100%">Sarikei
  
  </div>
             
  <div class="column">
    <img src="https://media.tacdn.com/media/attractions-splice-spp-674x446/06/71/a3/b9.jpg" style="width:100%">Miri
    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQyqZrzazhNSBbcmZU75bNv7VTs3CDr72HO0U2y5_AFSqTluEOwEiDbXZlXwF5vhsF8LCN1y3BDEuIAw&usqp=CAU" style="width:100%">Sibu
    
  </div>
             
  <div class="column">
    <img src="https://sarawaktourism.com/v2/wp-content/uploads/2018/04/tellian.jpg" style="width:100%">Mukah
    <img src="https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0b3224f6-fdcd-4c87-8fc4-69f877b7a48e/d3etfuj-ff4a8dea-a0a5-4eae-8f1c-689653ed2f79.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzBiMzIyNGY2LWZkY2QtNGM4Ny04ZmM0LTY5Zjg3N2I3YTQ4ZVwvZDNldGZ1ai1mZjRhOGRlYS1hMGE1LTRlYWUtOGYxYy02ODk2NTNlZDJmNzkuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.79XdgpW_d2d9rwLeuwjqG7NUMrjHyaWLVBEiNcLd9IY" style="width:100%">Singkawang
  </div>
  
</div> 
           </div>
           
           <div id="product">
           <br><br><br><br><br><br>
           <h1 style="text-align: center;">OUR PRODUCT AND SERVICE</h1>
           <div style="background-color: black;">
           
        
         
         
            
      <img src="https://www.bookaway.com/media/files/5e3aa327d3ccefb9baa60150.jpeg" style="width:40%">
 
            </div>
    
           </div>
           <br><br><br>
           
           </div>
           
           <br><br><br>
           
           <div id="about">
           <h2 style="text-align: center;">ABOUT US</h2>



<br><br>

<div class="rowcard">
  <div class="columncard" style="background-color:#aaa;">
      <h2>WHY CHOOSE US</h2><br>
    <p>The specially designed coaches meet all safety requirements whilst the deco reflects the young and vibrant spirits. Whether you are travelling alone or with a company, QuickSar was one of the very first to offer a unique wider area seat specially designed for your utmost comfortable.</p>
  </div>
  <div class="columncard" style="background-color:#bbb;">
      <h2>OUR MISSION</h2><br>
    <p>Our mission is to provide customer with affordable, express, safe, pleasant, enjoyable and comfortable trips across Sarawak and its border. Countless satisfied passengers gave their thumbs up to QuickSar for the kind of service which is a class of its own</p>
  </div>
  <div class="columncard" style="background-color:#ccc;">
      <h2>OUR VISSION</h2><br>
    <p>Deliver a service of excellence that exceeds the needs and expectation of our customers. Strive to become a market leader in the transportation industry of which others aspire to follow</p>
  </div>
</div>

 <br><br><br><br>
        
        <div id="portfolio" class="container-fluid bg-grey" style="color: black;">
  <h1 class="text-center" style="margin:20px;">Portfolio</h1>
        <div class="row" >
    <div class="col-sm-3">
      <div class="thumbnail">
        <img src="https://www.bing.com/images/blob?bcid=S-z0ZKy0HuQCIGJotRn0wxZ2mfly.....5o" alt="44-seater">
        <p><strong>44-Seaters Bus</strong></p>
      </div>
    </div>
    <div class="col-sm-3">
      <div class="thumbnail">
        <img src="https://th.bing.com/th/id/OIP.PZOsFMeujMCsbq05njiw9gHaEK?pid=ImgDet&rs=1" alt="seat for 44 seater">
        <p><strong>Seats in 44-seaters</strong></p>
      </div>
    </div>
    <div class="col-sm-3">
      <div class="thumbnail">
        <img src="https://www.asparkholidays.com/uploads/57474_isuzu.jpg" alt="20-seater">
        <p><strong>20-Seaters Bus</strong></p>
      </div>
    </div>
<div class="col-sm-3">
      <div class="thumbnail">
        <img src="https://www.bing.com/images/blob?bcid=S32wh66IMOQCIGJotRn0wxZ2mfly.....xc" alt="seat for 20 seater">
        <p><strong>Seats in 20-seaters</strong></p>
      </div>
    </div>
  </div>
</div>
        
        
 <div id="contact" style="color: black;">
        <h2 class="text-center" style="margin:20px;">Contact</h2>
        <div class="row" style="margin:30px;">
         <div class="col text-center">
                    <p><i class="fas fa-map-marker-alt"></i>
                        <b>QuickSar Sdn Bhd</b><br/>
                         No. 37, Lot 1122, <br/>
                         Jalan Tai Shin Jar, Batu 3, <br>
                         93250 Kuching, Sarawak.<br/>
                    </p>

                    <p class="footer-contact-num"><i class="fa fa-phone fa-fw"></i>+03 3945088</p>
                      <p><i class="fa fa-envelope fa-fw"></i><a href="mailto:info@quicksarexpress.com" target="_blank">info@samtoursntravels.com</a></p>
            </div>
         </div>
        </div>
      
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


