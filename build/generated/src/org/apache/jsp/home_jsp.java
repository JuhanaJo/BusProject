package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Online Bus Ticket Reservation </title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" \n");
      out.write("              integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"busStyle.css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("          \n");
      out.write("        <script src=\"https://kit.fontawesome.com/c29dc15947.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("img, form, button{\n");
      out.write("  display: block;\n");
      out.write("  margin-left: auto;\n");
      out.write("  margin-right: auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body {\n");
      out.write("  background: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url(https://i.pinimg.com/originals/e9/37/b4/e937b41e96b2270eefdc7c2831307452.png);\n");
      out.write("  background-repeat: no-repeat;\n");
      out.write("  background-attachment: fixed;\n");
      out.write("  background-size: cover;\n");
      out.write("  color: white;\n");
      out.write("  position: relative;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".square {\n");
      out.write("  height: 600px;\n");
      out.write("  width: 1000px;\n");
      out.write("  background: linear-gradient( rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7) );\n");
      out.write("  display: block;\n");
      out.write("  margin-left: auto;\n");
      out.write("  margin-right: auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".rowdest {\n");
      out.write("  display: -ms-flexbox; /* IE10 */\n");
      out.write("  display: flex;\n");
      out.write("  -ms-flex-wrap: wrap; /* IE10 */\n");
      out.write("  flex-wrap: wrap;\n");
      out.write("  padding: 0 4px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".fadebck {\n");
      out.write("    background: linear-gradient( rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7) );\n");
      out.write("    width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Create four equal columns that sits next to each other */\n");
      out.write(".column {\n");
      out.write("  -ms-flex: 25%; /* IE10 */\n");
      out.write("  flex: 25%;\n");
      out.write("  max-width: 25%;\n");
      out.write("  padding: 0 4px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".column img {\n");
      out.write("  margin-top: 8px;\n");
      out.write("  vertical-align: middle;\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Responsive layout - makes a two column-layout instead of four columns */\n");
      out.write("@media screen and (max-width: 800px) {\n");
      out.write("  .column {\n");
      out.write("    -ms-flex: 50%;\n");
      out.write("    flex: 50%;\n");
      out.write("    max-width: 50%;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */\n");
      out.write("@media screen and (max-width: 600px) {\n");
      out.write("  .column {\n");
      out.write("    -ms-flex: 100%;\n");
      out.write("    flex: 100%;\n");
      out.write("    max-width: 100%;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write(".mySlides {display: none;}\n");
      out.write(".mySlidesfirst {display: none;}\n");
      out.write("\n");
      out.write("img {vertical-align: middle;}\n");
      out.write("\n");
      out.write("/* Slideshow container */\n");
      out.write(".slideshow-container {\n");
      out.write("  max-width: 1000px;\n");
      out.write("  position: relative;\n");
      out.write("  margin: auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Caption text */\n");
      out.write(".text {\n");
      out.write("  color: #f2f2f2;\n");
      out.write("  font-size: 15px;\n");
      out.write("  padding: 8px 12px;\n");
      out.write("  position: absolute;\n");
      out.write("  bottom: 8px;\n");
      out.write("  width: 100%;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Number text (1/3 etc) */\n");
      out.write(".numbertext {\n");
      out.write("  color: #f2f2f2;\n");
      out.write("  font-size: 12px;\n");
      out.write("  padding: 8px 12px;\n");
      out.write("  position: absolute;\n");
      out.write("  top: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* The dots/bullets/indicators */\n");
      out.write(".dot {\n");
      out.write("  height: 15px;\n");
      out.write("  width: 15px;\n");
      out.write("  margin: 0 2px;\n");
      out.write("  background-color: #bbb;\n");
      out.write("  border-radius: 50%;\n");
      out.write("  display: inline-block;\n");
      out.write("  transition: background-color 0.6s ease;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".active {\n");
      out.write("  background-color: #717171;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Fading animation */\n");
      out.write(".fade {\n");
      out.write("  -webkit-animation-name: fade;\n");
      out.write("  -webkit-animation-duration: 2.5s;\n");
      out.write("  animation-name: fade;\n");
      out.write("  animation-duration: 2.5s;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@-webkit-keyframes fade {\n");
      out.write("  from {opacity: .1} \n");
      out.write("  to {opacity: 1}\n");
      out.write("}\n");
      out.write("\n");
      out.write("@keyframes fade {\n");
      out.write("  from {opacity: .1} \n");
      out.write("  to {opacity: 1}\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* On smaller screens, decrease text size */\n");
      out.write("@media only screen and (max-width: 300px) {\n");
      out.write("  .text {font-size: 11px}\n");
      out.write("}\n");
      out.write("\n");
      out.write(".block {\n");
      out.write("  display: block;\n");
      out.write("  width: 100%;\n");
      out.write("  border: none;\n");
      out.write("  background-color: #04AA6D;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 28px;\n");
      out.write("  font-size: 16px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".block:hover {\n");
      out.write("  background-color: #ddd;\n");
      out.write("  color: black;\n");
      out.write("}\n");
      out.write("\n");
      out.write("p {\n");
      out.write("                font-size: 18px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #contact {\n");
      out.write("                background-color: #EAE7DC;\n");
      out.write("\t\toverflow: hidden;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("#portfolio{\n");
      out.write("  overflow: hidden;\n");
      out.write("\t\n");
      out.write("}\n");
      out.write("\n");
      out.write("  .thumbnail {\n");
      out.write("    padding: 0 0 15px 0;\n");
      out.write("    border: none;\n");
      out.write("    border-radius: 0;\n");
      out.write("  }\n");
      out.write("  .thumbnail img {\n");
      out.write("    width: 100%;\n");
      out.write("    height: 200px;\n");
      out.write("    margin-top: 40px;\n");
      out.write("\tmargin-bottom: 20px;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("  .bg-grey {\n");
      out.write("    background-color: #f6f6f6;\n");
      out.write("  }\n");
      out.write("\n");
      out.write(".columncard {\n");
      out.write("  float: left;\n");
      out.write("  width: 33.33%;\n");
      out.write("  padding: 10px;\n");
      out.write("  height: 300px; /* Should be removed. Only for demonstration */\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Clear floats after the columns */\n");
      out.write(".rowcard:after {\n");
      out.write("  content: \"\";\n");
      out.write("  display: table;\n");
      out.write("  clear: both;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */\n");
      out.write("@media screen and (max-width: 600px) {\n");
      out.write("  .column {\n");
      out.write("    width: 100%;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("  \n");
      out.write("</style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body data-spy=\"scroll\" >\n");
      out.write("        <header>\n");
      out.write("             <!-- Nav -->\n");
      out.write("  \n");
      out.write("                <nav class=\"navbar navbar-expand-md navbar-dark\" style=\"background-color: tomato\">\n");
      out.write("                    \n");
      out.write("                \n");
      out.write("                <div>\n");
      out.write("                    <a href=\"\" class=\"navbar-brand\">Online Bus Ticket Reservation </a>\n");
      out.write("                </div>\n");
      out.write("                <ul class=\"navbar-nav\">\n");
      out.write("                    \n");
      out.write("                    <li><a href=\"#product\" class=\"nav-link\">PRODUCT</a></li>\n");
      out.write("                    <li><a href=\"#about\" class=\"nav-link\">ABOUT</a></li>\n");
      out.write("                    <li><a href=\"#portfolio\" class=\"nav-link\">PORTFOLIO</a></li>\n");
      out.write("                    <li><a href=\"#contact\" class=\"nav-link\">CONTACT</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <!-- Input form -->\n");
      out.write("        <div>\n");
      out.write("            <img class=\"mySlidesfirst\" src=\"https://sarawaktourism.com/v2/wp-content/uploads/2019/02/electric-bus.jpg\" style=\"width:100%\">\n");
      out.write("            <img class=\"mySlidesfirst\" src=\"https://sc01.alicdn.com/kf/H41acd8cf78e14c9aa29d04c3e73daed6I/200211651/H41acd8cf78e14c9aa29d04c3e73daed6I.jpg\" style=\"width:100%\">\n");
      out.write("            <img class=\"mySlidesfirst\" src=\"https://www.bookaway.com/media/files/5e3aa327d3ccefb9baa60150.jpeg\" style=\"width:100%\">\n");
      out.write("        </div> \n");
      out.write("            <script>\n");
      out.write("           var myIndex = 0;\n");
      out.write("carousel();\n");
      out.write("\n");
      out.write("function carousel() {\n");
      out.write("  var i;\n");
      out.write("  var x = document.getElementsByClassName(\"mySlidesfirst\");\n");
      out.write("  for (i = 0; i < x.length; i++) {\n");
      out.write("    x[i].style.display = \"none\";  \n");
      out.write("  }\n");
      out.write("  myIndex++;\n");
      out.write("  if (myIndex > x.length) {myIndex = 1}    \n");
      out.write("  x[myIndex-1].style.display = \"block\";  \n");
      out.write("  setTimeout(carousel, 2000); // Change image every 2 seconds\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("<br><br>\n");
      out.write("               <br>\n");
      out.write("               \n");
      out.write("                    <br><br><br><br><br>\n");
      out.write("                    \n");
      out.write("                    <button class=\"block\"><a href=\"BookingForm.jsp\">Book Now</a></button>\n");
      out.write("                    \n");
      out.write("                    <br><br><br>\n");
      out.write("           <div class=\"fadebck\">\n");
      out.write("           \n");
      out.write("           <h1 style=\"text-align: center;\">Sarawak Popular Destinations</h1>\n");
      out.write("           <br>\n");
      out.write("         <div class=\"rowdest\"> \n");
      out.write("  <div class=\"column\">\n");
      out.write("      <img src=\"https://www.borneotalk.com/wp-content/uploads/2019/12/bintulu-city-02.jpg\" style=\"width:100%\">Bintulu\n");
      out.write("      <img src=\"http://ttgasia.2017.ttgasia.com/wp-content/uploads/sites/2/2017/05/kuching-sarawak.jpg\" style=\"width:100%\">Pontianak\n");
      out.write("  </div>\n");
      out.write("             \n");
      out.write("  <div class=\"column\">\n");
      out.write("    <img src=\"https://afhc2018.sarawak.gov.my/modules/web/image_show.php?id=366\" style=\"width:100%\">Kuching\n");
      out.write("    <img src=\"https://www.borneotalk.com/wp-content/uploads/2021/04/Sarikei_Sarawak.jpg\" style=\"width:100%\">Sarikei\n");
      out.write("  \n");
      out.write("  </div>\n");
      out.write("             \n");
      out.write("  <div class=\"column\">\n");
      out.write("    <img src=\"https://media.tacdn.com/media/attractions-splice-spp-674x446/06/71/a3/b9.jpg\" style=\"width:100%\">Miri\n");
      out.write("    <img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQyqZrzazhNSBbcmZU75bNv7VTs3CDr72HO0U2y5_AFSqTluEOwEiDbXZlXwF5vhsF8LCN1y3BDEuIAw&usqp=CAU\" style=\"width:100%\">Sibu\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("             \n");
      out.write("  <div class=\"column\">\n");
      out.write("    <img src=\"https://sarawaktourism.com/v2/wp-content/uploads/2018/04/tellian.jpg\" style=\"width:100%\">Mukah\n");
      out.write("    <img src=\"https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/0b3224f6-fdcd-4c87-8fc4-69f877b7a48e/d3etfuj-ff4a8dea-a0a5-4eae-8f1c-689653ed2f79.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzBiMzIyNGY2LWZkY2QtNGM4Ny04ZmM0LTY5Zjg3N2I3YTQ4ZVwvZDNldGZ1ai1mZjRhOGRlYS1hMGE1LTRlYWUtOGYxYy02ODk2NTNlZDJmNzkuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.79XdgpW_d2d9rwLeuwjqG7NUMrjHyaWLVBEiNcLd9IY\" style=\"width:100%\">Singkawang\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("</div> \n");
      out.write("           </div>\n");
      out.write("           \n");
      out.write("           <div id=\"product\">\n");
      out.write("           <br><br><br><br><br><br>\n");
      out.write("           <h1 style=\"text-align: center;\">OUR PRODUCT AND SERVICE</h1>\n");
      out.write("           <div style=\"background-color: black;\">\n");
      out.write("           \n");
      out.write("        \n");
      out.write("         \n");
      out.write("         \n");
      out.write("            \n");
      out.write("      <img src=\"https://www.bookaway.com/media/files/5e3aa327d3ccefb9baa60150.jpeg\" style=\"width:40%\">\n");
      out.write(" \n");
      out.write("            </div>\n");
      out.write("    \n");
      out.write("           </div>\n");
      out.write("           <br><br><br>\n");
      out.write("           \n");
      out.write("           </div>\n");
      out.write("           \n");
      out.write("           <br><br><br>\n");
      out.write("           \n");
      out.write("           <div id=\"about\">\n");
      out.write("           <h2 style=\"text-align: center;\">ABOUT US</h2>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<br><br>\n");
      out.write("\n");
      out.write("<div class=\"rowcard\">\n");
      out.write("  <div class=\"columncard\" style=\"background-color:#aaa;\">\n");
      out.write("      <h2>WHY CHOOSE US</h2><br>\n");
      out.write("    <p>The specially designed coaches meet all safety requirements whilst the deco reflects the young and vibrant spirits. Whether you are travelling alone or with a company, QuickSar was one of the very first to offer a unique wider area seat specially designed for your utmost comfortable.</p>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"columncard\" style=\"background-color:#bbb;\">\n");
      out.write("      <h2>OUR MISSION</h2><br>\n");
      out.write("    <p>Our mission is to provide customer with affordable, express, safe, pleasant, enjoyable and comfortable trips across Sarawak and its border. Countless satisfied passengers gave their thumbs up to QuickSar for the kind of service which is a class of its own</p>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"columncard\" style=\"background-color:#ccc;\">\n");
      out.write("      <h2>OUR VISSION</h2><br>\n");
      out.write("    <p>Deliver a service of excellence that exceeds the needs and expectation of our customers. Strive to become a market leader in the transportation industry of which others aspire to follow</p>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write(" <br><br><br><br>\n");
      out.write("        \n");
      out.write("        <div id=\"portfolio\" class=\"container-fluid bg-grey\" style=\"color: black;\">\n");
      out.write("  <h1 class=\"text-center\" style=\"margin:20px;\">Portfolio</h1>\n");
      out.write("        <div class=\"row\" >\n");
      out.write("    <div class=\"col-sm-3\">\n");
      out.write("      <div class=\"thumbnail\">\n");
      out.write("        <img src=\"https://www.bing.com/images/blob?bcid=S-z0ZKy0HuQCIGJotRn0wxZ2mfly.....5o\" alt=\"44-seater\">\n");
      out.write("        <p><strong>44-Seaters Bus</strong></p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-3\">\n");
      out.write("      <div class=\"thumbnail\">\n");
      out.write("        <img src=\"https://th.bing.com/th/id/OIP.PZOsFMeujMCsbq05njiw9gHaEK?pid=ImgDet&rs=1\" alt=\"seat for 44 seater\">\n");
      out.write("        <p><strong>Seats in 44-seaters</strong></p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"col-sm-3\">\n");
      out.write("      <div class=\"thumbnail\">\n");
      out.write("        <img src=\"https://www.asparkholidays.com/uploads/57474_isuzu.jpg\" alt=\"20-seater\">\n");
      out.write("        <p><strong>20-Seaters Bus</strong></p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("<div class=\"col-sm-3\">\n");
      out.write("      <div class=\"thumbnail\">\n");
      out.write("        <img src=\"https://www.bing.com/images/blob?bcid=S32wh66IMOQCIGJotRn0wxZ2mfly.....xc\" alt=\"seat for 20 seater\">\n");
      out.write("        <p><strong>Seats in 20-seaters</strong></p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write(" <div id=\"contact\" style=\"color: black;\">\n");
      out.write("        <h2 class=\"text-center\" style=\"margin:20px;\">Contact</h2>\n");
      out.write("        <div class=\"row\" style=\"margin:30px;\">\n");
      out.write("         <div class=\"col text-center\">\n");
      out.write("                    <p><i class=\"fas fa-map-marker-alt\"></i>\n");
      out.write("                        <b>QuickSar Sdn Bhd</b><br/>\n");
      out.write("                         No. 37, Lot 1122, <br/>\n");
      out.write("                         Jalan Tai Shin Jar, Batu 3, <br>\n");
      out.write("                         93250 Kuching, Sarawak.<br/>\n");
      out.write("                    </p>\n");
      out.write("\n");
      out.write("                    <p class=\"footer-contact-num\"><i class=\"fa fa-phone fa-fw\"></i>+03 3945088</p>\n");
      out.write("                      <p><i class=\"fa fa-envelope fa-fw\"></i><a href=\"mailto:info@quicksarexpress.com\" target=\"_blank\">info@samtoursntravels.com</a></p>\n");
      out.write("            </div>\n");
      out.write("         </div>\n");
      out.write("        </div>\n");
      out.write("      \n");
      out.write("    </body>\n");
      out.write("    <footer class=\"page-footer font-small pt-4\" style=\"background-color: tomato\">\n");
      out.write("  <!-- Footer Links -->\n");
      out.write("  <div class=\"container-fluid text-center\">\n");
      out.write("\n");
      out.write("    <!-- Grid row -->\n");
      out.write("    <div class=\"row\">\n");
      out.write("\n");
      out.write("      <!-- Grid column -->\n");
      out.write("      <div class=\"col\">\n");
      out.write("\n");
      out.write("        <!-- Content -->\n");
      out.write("        <h5 class=\"text-uppercase\">Services</h5>\n");
      out.write("        <p>QuickSar Sdn Bhd. provide the online bus reservation services for you which you can done it anytime for 24hours.</p>\n");
      out.write("        \n");
      out.write("          <a class=\"fb-ic\">\n");
      out.write("            <i class=\"fab fa-facebook-f fa-lg white-text mr-md-5 mr-3\"> </i>\n");
      out.write("          </a>\n");
      out.write("          <a class=\"tw-ic\">\n");
      out.write("            <i class=\"fab fa-twitter fa-lg white-text mr-md-5 mr-3\"> </i>\n");
      out.write("          </a>\n");
      out.write("          <a class=\"gplus-ic\">\n");
      out.write("            <i class=\"fab fa-google-plus-g fa-lg white-text mr-md-5 mr-3\"> </i>\n");
      out.write("          </a>\n");
      out.write("          <a class=\"ins-ic\">\n");
      out.write("            <i class=\"fab fa-instagram fa-lg white-text mr-md-5 mr-3\"> </i>\n");
      out.write("          </a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("      <hr class=\"clearfix w-100 d-md-none pb-3\">\n");
      out.write("\n");
      out.write("      <div class=\"col\">\n");
      out.write("\n");
      out.write("        <!-- Links -->\n");
      out.write("        <h5 class=\"text-uppercase\">categories</h5>\n");
      out.write("        <ul class=\"list-unstyled\">\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#!\">Product</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#!\">About</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#!\">Portfolio</a>\n");
      out.write("          </li>\n");
      out.write("          <li>\n");
      out.write("            <a href=\"#!\">Contact</a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"footer-copyright text-center py-3\">&copy; 2020 Copyright: QuickSar Sdn Bhd.</div>\n");
      out.write("</footer>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
