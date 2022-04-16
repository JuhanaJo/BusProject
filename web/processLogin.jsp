<%-- 
    Document   : processLogin
    Created on : 15 Jun 2021, 11:49:02
    Author     : hfqhishk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page errorPage="error.jsp" %>
<%@page import="java.sql.*"%>
<jsp:useBean id="myFw" class="com.fws.fws" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
         <jsp:setProperty name="myFw" property="*" />
         <%
             String username = request.getParameter("username");
             String password = request.getParameter("password");
             Class.forName("com.mysql.jdbc.Driver");
             String myURL = "jdbc:mysql://localhost:3306/busticket";
             Connection myConnection = DriverManager.getConnection(myURL, "root","admin");

             
             Statement st = myConnection.createStatement();
             ResultSet rs =st.executeQuery("select * from staffbus where username='"+username+"'and password='"+password+"'");
                     
             try{
                 rs.next();
                 if(rs.getString("password").equals(password)&&rs.getString("username").equals(username)){
                     out.println("<script type=\"text/javascript\">");
                     out.println("alert(\"Login Success,Welcome! "+username+"\")");
                  session.setAttribute("username", rs.getString("username"));
                  
                     out.println("</script>");
                     
                     RequestDispatcher rd = request.getRequestDispatcher ("StaffHome.jsp");
                     rd.forward(request, response);
                 }
                 else{
                    // out.println("Invalid password or username");
                 }
                 myConnection.close();
             }catch(Exception e){
                out.println("Invalid password or username");
                 e.printStackTrace();
             }
        %>
    </body>
</html>
