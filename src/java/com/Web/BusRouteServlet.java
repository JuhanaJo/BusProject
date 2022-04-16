package com.Web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.busrouteDAO;
import com.Model.busroute;
import java.sql.Date;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author USER
 */

public class BusRouteServlet extends HttpServlet {

    private busrouteDAO busrouteDAO ;
    private static String list = "BusRouteServlet?action=listBusroute";
    
    public void init() {
        busrouteDAO = new busrouteDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
       
        
        try {
            switch (action){
                case "newroute":
                    showNewForm(request, response);
                    break;
                case "insertroute":
                    insertBusroute(request, response);
                    break;
                case "deleteroute":
                    deleteBusroute(request, response);
                    break;
                case "editroute":
                    showEditForm(request, response);
                    break;
                case "updateroute":
                    updateBusroute(request, response);
                    break;
                case "listBusroute":
                    listBusroute(request, response);
                    break;
            }
        } catch (SQLException ex){
            throw new ServletException(ex);
        } catch (ParseException ex) {
            Logger.getLogger(BusRouteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    
    private void listBusroute (HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException{
        List <busroute> listBusroute = busrouteDAO.selectAllbusroute();
        request.setAttribute("listBusroute", listBusroute);
        RequestDispatcher dispatcher = request.getRequestDispatcher("busrouteList.jsp");
        dispatcher.forward(request, response);
    }
    
    private void showNewForm (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("busrouteForm.jsp");
        dispatcher.forward(request, response);
    }
    
    private void showEditForm (HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException{
        int id = Integer.parseInt(request.getParameter("id"));
        busroute existingBusroute = busrouteDAO.selectBusroute(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("busrouteForm.jsp");
        request.setAttribute("busroute", existingBusroute);
        dispatcher.forward(request, response);
    }
    
    private void insertBusroute (HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ParseException{
        
        String departure = request.getParameter("departure");
        String destination = request.getParameter("destination");
        
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        
        int busno = Integer.parseInt(request.getParameter("busno"));
        
        busroute newBusroute= new busroute(departure, destination, date, time, busno);
        busrouteDAO.insertBusroute(newBusroute);
        
        response.sendRedirect(list);
    }
    
    private void updateBusroute(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ParseException{
        int id = Integer.parseInt(request.getParameter("id"));
        String departure = request.getParameter("departure");        
        String destination = request.getParameter("destination");
        
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        
        int busno = Integer.parseInt(request.getParameter("busno"));
        
        busroute busroute = new busroute(id, departure, destination, date, time, busno);
        busrouteDAO.updateBusroute(busroute);
        response.sendRedirect(list);
    }
    
    private void deleteBusroute (HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException{
        int id = Integer.parseInt(request.getParameter("id"));
        busrouteDAO.deleteBusroute(id);
        response.sendRedirect(list);
    }
}