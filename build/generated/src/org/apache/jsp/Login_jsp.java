package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js\"></script>\n");
      out.write("<!------ Include the above in your HEAD tag ---------->\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("      <script src=\"https://kit.fontawesome.com/c29dc15947.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("  <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("<style>\n");
      out.write("    body#LoginForm{ background-image:url(\"https://image.winudf.com/v2/image1/Y29tLnRnLm9mZi5yb2FkLmJ1cy5kcml2ZS5zaW11bGF0b3Jfc2NyZWVuXzJfMTU0ODEwMTI5OF8wNjk/screen-3.jpg?fakeurl=1&type=.jpg\"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}\n");
      out.write("\n");
      out.write(".form-heading { color:#fff; font-size:23px;}\n");
      out.write(".panel h2{ color:#444444; font-size:18px; margin:0 0 8px 0;}\n");
      out.write(".panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}\n");
      out.write(".login-form .form-control {\n");
      out.write("  background: #f7f7f7 none repeat scroll 0 0;\n");
      out.write("  border: 1px solid #d4d4d4;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  font-size: 14px;\n");
      out.write("  height: 50px;\n");
      out.write("  line-height: 50px;\n");
      out.write("}\n");
      out.write(".main-div {\n");
      out.write("  background: #ffffff none repeat scroll 0 0;\n");
      out.write("  border-radius: 2px;\n");
      out.write("  margin: 10px auto 30px;\n");
      out.write("  max-width: 38%;\n");
      out.write("  padding: 50px 70px 70px 71px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login-form .form-group {\n");
      out.write("  margin-bottom:10px;\n");
      out.write("}\n");
      out.write(".login-form{ text-align:center;}\n");
      out.write(".forgot a {\n");
      out.write("  color: #777777;\n");
      out.write("  font-size: 14px;\n");
      out.write("  text-decoration: underline;\n");
      out.write("}\n");
      out.write(".login-form  .btn.btn-primary {\n");
      out.write("  background: #f0ad4e none repeat scroll 0 0;\n");
      out.write("  border-color: #f0ad4e;\n");
      out.write("  color: #ffffff;\n");
      out.write("  font-size: 14px;\n");
      out.write("  width: 100%;\n");
      out.write("  height: 50px;\n");
      out.write("  line-height: 50px;\n");
      out.write("  padding: 0;\n");
      out.write("}\n");
      out.write(".forgot {\n");
      out.write("  text-align: left; margin-bottom:30px;\n");
      out.write("}\n");
      out.write(".botto-text {\n");
      out.write("  color: #ffffff;\n");
      out.write("  font-size: 14px;\n");
      out.write("  margin: auto;\n");
      out.write("}\n");
      out.write(".login-form .btn.btn-primary.reset {\n");
      out.write("  background: #ff9900 none repeat scroll 0 0;\n");
      out.write("}\n");
      out.write(".back { text-align: left; margin-top:10px;}\n");
      out.write(".back a {color: #444444; font-size: 13px;text-decoration: none;}\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<!------ Include the above in your HEAD tag ---------->\n");
      out.write("  </head>\n");
      out.write("  <form action=\"processLogin.jsp\" method=\"post\">\n");
      out.write("<body id=\"LoginForm\">\n");
      out.write("    <br><!-- comment -->\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("<div class=\"container\">\n");
      out.write("<div class=\"login-form\">\n");
      out.write("<div class=\"main-div\">\n");
      out.write("    <div class=\"panel\">\n");
      out.write("        <br><!-- comment -->\n");
      out.write("        <i class=\"fa fa-bus\" style=\"font-size:70px;\" aria-hidden=\"true\"></i><br><br>\n");
      out.write("        <h2>STAFF LOGIN</h2><br>\n");
      out.write("   </div>\n");
      out.write("    <form id=\"Login\">\n");
      out.write("\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <i class=\"fas fa-user\"></i>\n");
      out.write("            <input type=\"text\" placeholder=\"Enter Username\" name=\"username\" required>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <i class=\"fas fa-key\"></i>\n");
      out.write("          <input type=\"password\" placeholder=\"Enter Password\" name=\"password\" required>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"forgot\">\n");
      out.write("            <center>\n");
      out.write("        <a href=\"Register1.jsp\">Register Here</a>\n");
      out.write("            </center>\n");
      out.write("</div>\n");
      out.write("        <button type=\"submit\" class=\"btn btn-primary\">Login</button>\n");
      out.write("\n");
      out.write("    </form>\n");
      out.write("    </div>\n");
      out.write("<p class=\"botto-text\"> QUICKSAR SDN BHD</p>\n");
      out.write("</div></div></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
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
