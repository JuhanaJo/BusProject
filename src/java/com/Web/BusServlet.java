/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import com.DAO.BusDAO;
import com.DAO.busrouteDAO;
import com.Model.Bus;
import com.Model.busroute;
import static java.lang.System.out;

import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
@WebServlet("/")
public class BusServlet extends HttpServlet {

    private BusDAO busDAO;
    
    public void init() {
        busDAO = new BusDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        
        try {
            switch (action){
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                    insertBus(request, response);
                    break;
                case "/delete":
                    deleteBus(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                    updateBus(request, response);
                    break;
                case "/listBus":
                    listBus(request, response);
                    break;
            }
        } catch (SQLException ex){
            throw new ServletException(ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
    
    private void listBus (HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException{
        List <Bus> listBus = busDAO.selectAllBus();
        request.setAttribute("listBus", listBus);
        RequestDispatcher dispatcher = request.getRequestDispatcher("BusList.jsp");
        dispatcher.forward(request, response);
    }
    
    
    private void showNewForm (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("BusForm.jsp");
        dispatcher.forward(request, response);
        
    }
    
    private void showEditForm (HttpServletRequest request, HttpServletResponse response)
            throws SQLException, ServletException, IOException{
        int no = Integer.parseInt(request.getParameter("busNo"));
        Bus existingBus = busDAO.selectBus(no);
        RequestDispatcher dispatcher = request.getRequestDispatcher("BusForm.jsp");
        request.setAttribute("existbus", existingBus); //car -> existbus
        dispatcher.forward(request, response);
    }
    
    private void insertBus (HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException{
        String platno = request.getParameter("platNo");
        String type = request.getParameter("busType");
        String status = request.getParameter("busStatus");
        String available = request.getParameter("availability");
        
        Bus newBus = new Bus(platno, type, status, available);
        busDAO.insertBus(newBus);
        response.sendRedirect("listBus");
    }
    
    private void updateBus (HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException{
        int no = Integer.parseInt(request.getParameter("busNo"));
        String platno = request.getParameter("platNo");
        String type = request.getParameter("busType");
        String status = request.getParameter("busStatus");
        String available = request.getParameter("availability");
        
        Bus bus = new Bus(no, platno, type, status, available);
        busDAO.updateBus(bus);
        response.sendRedirect("listBus");
    }
    
    private void deleteBus (HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException{
        int no = Integer.parseInt(request.getParameter("busNo"));
        busDAO.deleteBus(no);
        response.sendRedirect("listBus");
    }
    
}
