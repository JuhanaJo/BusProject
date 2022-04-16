/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Web;

import com.DAO.BookingDAO;
import com.Model.Booking;

import java.io.IOException;
import static java.lang.System.out;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import java.sql.SQLException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 *
 * @author USER
 */

public class BookingServlet extends HttpServlet {
private BookingDAO bookingDAO;
    private static String listb = "BookingServlet?action=list";
    
    @Override
    public void init() {
        bookingDAO = new BookingDAO();
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        try {
            switch (action) {
                case "newb":
                    showNewForm(request, response);
                    break;
                    
                case "insertb":
                    insertBooking(request, response);
                    break;
                    
                case "thankyou":
                    thankyou(request, response);
                    
                case "deleteb":
                    deleteBooking(request, response);
                    break;
                case "editb":
                    showEditForm(request, response);
                    break;
                case "updateb":
                    updateBooking(request, response);
                    break;
                 
                case "list":
                    listBooking(request, response);
                    break;
            }
        }catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    
    private void listBooking(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List < Booking > listBooking = bookingDAO.selectAllBooking();
        request.setAttribute("listBooking", listBooking);
        RequestDispatcher dispatcher = request.getRequestDispatcher("BookingList.jsp");
        dispatcher.forward(request, response);
    }
    
    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("BookingForm.jsp");
        dispatcher.forward(request, response);
    }
    
    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Booking existingBooking = bookingDAO.selectBooking(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("BookingForm.jsp");
        request.setAttribute("booking", existingBooking);
        dispatcher.forward(request, response);
    }
    
    private void thankyou(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException {
        
        System.out.println("<script type=\"text/javascript\">");
        System.out.println("alert(\"Your ticket have been added into our records. Thank you for reserving ticket with us !");
        System.out.println("</script>");
        RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
        dispatcher.forward(request, response);
    }
    
    private void insertBooking(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String departure = request.getParameter("departure");
        String destination = request.getParameter("destination");
        String date = request.getParameter("date");
        String passName = request.getParameter("passName");
        String passICNo = request.getParameter("passICNo");
        String passPhoneNo = request.getParameter("passPhoneNo");
        int totalPassenger = Integer.parseInt(request.getParameter("totalPassenger"));
        Booking newBooking = new Booking(departure, destination, date, passName, passICNo, passPhoneNo, totalPassenger);
        bookingDAO.insertBooking(newBooking);
        response.sendRedirect("processDisplay.jsp");
    }
    
    
    private void updateBooking(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String departure = request.getParameter("departure");
        String destination = request.getParameter("destination");
        String date = request.getParameter("date");
        String passName = request.getParameter("passName");
        String passICNo = request.getParameter("passICNo");
        String passPhoneNo = request.getParameter("passPhoneNo");
        int totalPassenger = Integer.parseInt(request.getParameter("totalPassenger"));
        
        Booking booking = new Booking(id, departure, destination, date, passName, passICNo, passPhoneNo, totalPassenger);
        bookingDAO.updateBooking(booking);
        response.sendRedirect(listb);
    }
    
    private void deleteBooking(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        bookingDAO.deleteBooking(id);
        response.sendRedirect(listb);
        
    }
    
}
