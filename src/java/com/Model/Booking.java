/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Model;

/**
 *
 * @author USER
 */
public class Booking {
    protected int id;
    protected String departure;
    protected String destination;
    protected String date;
    protected String passName;
    protected String passICNo;
    protected String passPhoneNo;
    protected int totalPassenger;
    
    
    public Booking() {}

    public Booking(String departure, String destination, String date, String passName, String passICNo, String passPhoneNo, int totalPassenger) {
        super();
        this.departure = departure;
        this.destination = destination;
        this.date = date;
        this.passName = passName;
        this.passICNo = passICNo;
        this.passPhoneNo = passPhoneNo;
        this.totalPassenger = totalPassenger;
    }

//all booking details
    public Booking(int id, String departure, String destination, String date, String passName, String passICNo, String passPhoneNo, int totalPassenger) {
        super();
        this.id = id;
        this.departure = departure;
        this.destination = destination;
        this.date = date;
        this.passName = passName;
        this.passICNo = passICNo;
        this.passPhoneNo = passPhoneNo;
        this.totalPassenger = totalPassenger;
    }
    
    public int getid() {
        return id;
    }
    
    public void setid(int id) {
        this.id = id;
    }
    
    public String getdeparture() {
        return departure;
    }
    
    public void setdeparture(String departure) {
        this.departure = departure;
    }
    
    public String getdestination() {
        return destination;
    }
    
    public void setdestination(String destination) {
        this.destination = destination;
    }
    
    public String getDate() {
        return date;
    }
    
    public void setDate(String date) {
        this.date = date;
    }

    public int gettotalPassenger() {
        return totalPassenger;
    }
    
    public void settotalPassenger(int totalPassenger) {
        this.totalPassenger = totalPassenger;
    }
    
     public String getpassName() {
        return passName;
    }
    
    public void setpassName(String passName) {
        this.passName = passName;
    }
    
     public String getpassICNo() {
        return passICNo;
    }
    
    public void setpassICNo(String passICNo) {
        this.passICNo = passICNo;
    }
    
     public String getpassPhoneNo() {
        return passPhoneNo;
    }
    
    public void setpassPhoneNo(String passPhoneNo) {
        this.passPhoneNo = passPhoneNo;
    }
}
