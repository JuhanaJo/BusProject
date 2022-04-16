/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.Model.Booking;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author USER
 */
public class BookingDAO {
    Connection connection = null;
    private String jdbcURL = "jdbc:mysql://localhost:3306/busticket";
    private String jdbcUsername = "root";
    private String jdbcPassword = "admin";
    
    private static final String INSERT_BOOKING_SQL = "INSERT INTO booking (departure, destination, date, passName, passICNo, passPhoneNo, totalPassenger ) VALUES(?,?,?,?,?,?,?);";
    private static final String SELECT_BOOKING_BY_ID = "select * from booking where id=?";
    private static final String SELECT_ALL_BOOKING = "select * from booking";
    private static final String DELETE_BOOKING_SQL = "delete from booking where id = ?;";
    private static final String UPDATE_BOOKING_SQL = "update booking set departure=?, destination=?, date=?, passName=?, passICNo=?, passPhoneNo=?, totalPassenger = ? where id = ?;";
    
    public BookingDAO() {}
    
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        }catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
    
    public void insertBooking(Booking booking) throws SQLException {
        System.out.println(INSERT_BOOKING_SQL);

        try (Connection connection = getConnection(); PreparedStatement preparedStatement =
                connection.prepareStatement (INSERT_BOOKING_SQL)) {
            preparedStatement.setString(1, booking.getdeparture());
            preparedStatement.setString(2, booking.getdestination());
            preparedStatement.setString(3, booking.getDate());
            preparedStatement.setString(4, booking.getpassName());
            preparedStatement.setString(5, booking.getpassICNo());
            preparedStatement.setString(6, booking.getpassPhoneNo());
            preparedStatement.setInt(7, booking.gettotalPassenger());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();

        }
    }
    
    
    public Booking selectBooking(int id) {
        Booking booking= null;
        
        try (Connection connection = getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement (SELECT_BOOKING_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            rs.next();
                String departure = rs.getString("departure");
                String destination = rs.getString("destination");
                String date = rs.getString("date");
                String passName = rs.getString("passName");
                String passICNo = rs.getString("passICNo");
                String passPhoneNo = rs.getString("passPhoneNo");
                int totalPassenger = rs.getInt("totalPassenger");
                
                booking = new Booking(id, departure, destination, date, passName, passICNo, passPhoneNo, totalPassenger);
            
        } catch (SQLException e) {
            printSQLException(e);
        }
        return booking;
    }
    
    public List < Booking > selectAllBooking() {
        
        List < Booking > booking = new ArrayList <> ();
        
        try (Connection connection = getConnection();
                
                PreparedStatement preparedStatement = 
                        connection.prepareStatement(SELECT_ALL_BOOKING);) {
            System.out.println(preparedStatement);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt("id");
                String departure = rs.getString("departure");
                String destination = rs.getString("destination");
                String date = rs.getString("date");
                
                String passName = rs.getString("passName");
                String passICNo = rs.getString("passICNo");
                String passPhoneNo = rs.getString("passPhoneNo");
                int totalPassenger = rs.getInt("totalPassenger");
                booking.add(new Booking(id, departure, destination, date, passName, passICNo, passPhoneNo, totalPassenger));
            }
        }catch (SQLException e) {
            printSQLException(e);
        }
        return booking;
    }
    
    public boolean deleteBooking(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement =
                connection.prepareStatement(DELETE_BOOKING_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
    
    public boolean updateBooking(Booking booking) throws SQLException {
boolean rowUpdated;
try (Connection connection = getConnection(); PreparedStatement statement = 
        connection.prepareStatement(UPDATE_BOOKING_SQL);) {
    statement.setString(1, booking.getdeparture());
    statement.setString(2, booking.getdestination());
    statement.setString(3, booking.getDate());
    statement.setString(4, booking.getpassName());
    statement.setString(5, booking.getpassICNo());
    statement.setString(6, booking.getpassPhoneNo());
    statement.setInt(7, booking.gettotalPassenger());
    statement.setInt(8, booking.getid());
    
    rowUpdated = statement.executeUpdate() > 0;
    }
    return rowUpdated;
   }
    
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
