/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Model.busroute;


public class busrouteDAO {
    Connection connection = null; 

    private String jdbcURL = "jdbc:mysql://localhost:3306/busticket";
    private String jdbcUsername = "root";
    private String jdbcPassword = "admin";
    
    private static final String INSERT_BUSROUTE_SQL = "INSERT INTO busroute(departure, destination, date, "
            + "time, busno) VALUES (?,?,?,?,?);";
    private static final String SELECT_BUSROUTE_BY_ID = "select id,departure,destination,date, time,"
            + "busno from busroute where id=?";
    private static final String SELECT_ALL_BUSROUTE = "select * from busroute";
    private static final String DELETE_BUSROUTE_SQL = "delete from busroute where id=?;";
    private static final String UPDATE_BUSROUTE_SQL = "update busroute set departure=?, destination=? ,date=? ,"
            + "time=?, busno=? where id=?;";
    
    public busrouteDAO() {}
    
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        return connection;
    }
    
    public void insertBusroute (busroute busroute) throws SQLException {
        System.out.println(INSERT_BUSROUTE_SQL);
        
        //try-with-resources statement will auto close the connection
        try (Connection connection = getConnection(); 
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BUSROUTE_SQL)){
            preparedStatement.setString(1, busroute.getDeparture());
            preparedStatement.setString(2, busroute.getDestination());
            preparedStatement.setString(3, busroute.getDate());
            preparedStatement.setString(4, busroute.getTime());
            preparedStatement.setInt (5, busroute.getBusno());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
            
        } catch (SQLException e){
            printSQLException(e);
            
        }
    }
    
    public busroute selectBusroute(int id){
        busroute busroute = null;
        try (Connection connection = getConnection(); 
                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BUSROUTE_BY_ID);){
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()){
                String departure = rs.getString("departure");
                String destination = rs.getString("destination");
                String date = rs.getString("date");
                String time = rs.getString("time");
                int busno = rs.getInt("busno");
                busroute = new busroute(id, departure, destination, date, time, busno);
            }
        } catch (SQLException e){
            printSQLException(e);
        }
        return busroute;
    }
    
     public List < busroute > selectAllbusroute() {
        List < busroute > busroute = new ArrayList<> ();
        try (
               Connection connection = getConnection();
               PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BUSROUTE);){
             
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()){
                int id = rs.getInt("id");
                String departure = rs.getString("departure");
                String destination = rs.getString("destination");
                
                String date = rs.getString("date");
                String time = rs.getString("time");
                int busno = rs.getInt("busno");
                busroute.add(new busroute(id,departure, destination, date, time, busno));
            }
        }catch (SQLException e){
            printSQLException(e);
        }
        return busroute;
    }
    
    public boolean deleteBusroute (int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); 
                PreparedStatement statement = connection.prepareStatement(DELETE_BUSROUTE_SQL);){
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    
    public boolean updateBusroute(busroute busroute) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); 
                PreparedStatement statement = connection.prepareStatement(UPDATE_BUSROUTE_SQL);){
            statement.setString(1, busroute.getDeparture());
            statement.setString(2, busroute.getDestination());
            statement.setString(3, busroute.getDate());
            statement.setString(4, busroute.getTime());
            statement.setInt(5, busroute.getBusno());
            statement.setInt(6, busroute.getId());
            
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex){
            if (e instanceof SQLException){
                e.printStackTrace(System.err);
                System.err.println("SQLState: " +((SQLException)e).getSQLState());
                System.err.println("Error Code: " +((SQLException)e).getErrorCode());
                System.err.println("Message: " +e.getMessage());
                Throwable t = ex.getCause();
                
                while (t != null){
                    System.out.println("Cause: " +t);
                    t = t.getCause();
                }
            }
        }
    }
    
}
