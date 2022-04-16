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

import com.Model.Bus;

/**
 *
 * @author USER
 */
public class BusDAO {
    Connection connection = null;
    private String jdbcURL = "jdbc:mysql://localhost:3306/busticket";
    private String jdbcUsername = "root";
    private String jdbcPassword = "admin";
    
    private static final String INSERT_BUS_SQL = "INSERT INTO bus(platNo, busType, busStatus, availability) "
            + "VALUES (?,?,?,?);";
    private static final String SELECT_BUS_BY_ID = "select platNo, busType, busStatus, availability from bus where busNo=?";
    private static final String SELECT_ALL_BUS = "select * from bus";
    private static final String DELETE_BUS_SQL = "delete from bus where busNo=?;";
    private static final String UPDATE_BUS_SQL = "update bus set platNo=?, busType=?, busStatus=?, availability=? where busNo=?;";
            
            
    public BusDAO() {}
    
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
    
    public void insertBus (Bus bus) throws SQLException {
        System.out.println(INSERT_BUS_SQL);
        
        //try-with-resources statement will auto close the connection
        try (Connection connection = getConnection(); 
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BUS_SQL)){
            preparedStatement.setString(1, bus.getPlatNo());
            preparedStatement.setString(2, bus.getBusType());
            preparedStatement.setString(3, bus.getBusStatus());
            preparedStatement.setString(4, bus.getAvailability());
            
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
            
        } catch (SQLException e){
            printSQLException(e);
        }
    }
    
    public Bus selectBus(int no){
        Bus bus = null;
        try (Connection connection = getConnection(); 
                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BUS_BY_ID);){
            preparedStatement.setInt(1, no);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()){
                //get.String("") dalam tu kena sama dengan yg dalam DB
                String platno = rs.getString("platNo");
                String type = rs.getString("busType");
                String status = rs.getString("busStatus");
                String available = rs.getString("availability");
                bus = new Bus(no, platno, type, status, available);
            }
        } catch (SQLException e){
            printSQLException(e);
        }
        return bus;
    }
    
    
    public List <Bus> selectAllBus() {
        List <Bus> bus = new ArrayList<>();
        try (Connection connection = getConnection(); 
                PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BUS);){
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                //get.String("") dalam tu kena sama dengan yg dalam DB
                int no = rs.getInt("busNo");
                String platno = rs.getString("platNo");
                String type = rs.getString("busType");
                String status = rs.getString("busStatus");
                String available = rs.getString("availability");
                bus.add(new Bus(no, platno, type, status, available));
            }
        }catch (SQLException e){
            printSQLException(e);
        }
        return bus;
    }
    
    public boolean deleteBus (int no) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); 
                PreparedStatement statement = connection.prepareStatement(DELETE_BUS_SQL);){
            statement.setInt(1, no);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    
    public boolean updateBus (Bus bus) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); 
                PreparedStatement statement = connection.prepareStatement(UPDATE_BUS_SQL);){
            statement.setString(1, bus.getPlatNo());
            statement.setString(2, bus.getBusType());
            statement.setString(3, bus.getBusStatus());
            statement.setString(4, bus.getAvailability());
            statement.setInt(5, bus.getBusNo());
            
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
