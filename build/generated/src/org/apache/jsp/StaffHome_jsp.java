package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class StaffHome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        \n");
      out.write("        <script src=\"https://kit.fontawesome.com/c29dc15947.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("        background-image: url(https://i.pinimg.com/originals/e9/37/b4/e937b41e96b2270eefdc7c2831307452.png);\n");
      out.write("        background-size: cover;\n");
      out.write("        background-repeat: no-repeat;\n");
      out.write("        background-position: center;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .navbar-brand {\n");
      out.write("        padding-right: 80px;\n");
      out.write("        font-family: Andale Mono, monospace;\n");
      out.write("        font-size: 20px;\n");
      out.write("    }\n");
      out.write("    .row .btn-secondary{\n");
      out.write("        padding: 30px;\n");
      out.write("        text-align: center;\n");
      out.write("        font-size: 18px;\n");
      out.write("        height: 120px;\n");
      out.write("        width: 220px;\n");
      out.write("        margin-top:  22px;\n");
      out.write("        margin-bottom: 28px;\n");
      out.write("    }\n");
      out.write("        \n");
      out.write("\n");
      out.write("    .container .row {\n");
      out.write("        margin: auto;        \n");
      out.write("        display: grid;  \n");
      out.write("        justify-content: center;  \n");
      out.write("        align-items: center; \n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    footer {\n");
      out.write("        position: absolute;\n");
      out.write("        right: 0;\n");
      out.write("        width: 100%;\n");
      out.write("    }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("             <!-- Nav -->\n");
      out.write("            <nav class=\"navbar navbar-expand-md navbar-dark\" style=\"background-color: tomato\">\n");
      out.write("                <div>\n");
      out.write("                    <a href=\"\" class=\"navbar-brand\"> Online Bus Ticket Reservation </a>\n");
      out.write("                </div>\n");
      out.write("                <ul class=\"navbar-nav\">\n");
      out.write("                    <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/product\" class=\"nav-link\">STAFF</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header><br>\n");
      out.write("        <div class=\"container\">    \n");
      out.write("        <div class=\"row align-items-center\">\n");
      out.write("\n");
      out.write("            <div class=\"col-md-3 col-sm-6\">\n");
      out.write("            \t<a href=\"http://localhost:8080/Bus Project/listBus\" class=\"btn btn-secondary\"><i class=\"fas fa-bus\"></i><br>Bus Details</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3 col-sm-6\">\n");
      out.write("            \t<a href=\"BusRoute.jsp\" class=\"btn btn-secondary\"><i class=\"fas fa-clipboard-list\"></i><br>Bus Route</a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3 col-sm-6\">\n");
      out.write("            \t<a href=BookingServlet?action=list class=\"btn btn-secondary\"><i class=\"fas fa-info-circle\"></i><br>Booking Details</a>\n");
      out.write("            </div>\n");
      out.write("        </div>     \n");
      out.write("        </div><br><br>\n");
      out.write("            <footer class=\"page-footer font-small pt-4\" style=\"background-color: tomato\">\n");
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
      out.write("    </body>\n");
      out.write("</html>\n");
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
