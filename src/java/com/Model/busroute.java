/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Model;


/**
 *
 * @author 
 */
public class busroute {
    protected int id;
    protected String departure;
    protected String destination;
    protected String date;
    protected String time;
    protected int busno;
    
    public busroute(){}
    
    public busroute(String departure, String destination, String date, String time, int busno){
        super();
        this.departure = departure;
        this.destination = destination;
        this.date = date;
        this.time = time;
        this.busno = busno;
    }
    
    public busroute(int id, String departure, String destination, String date, String time, int busno){
        super();
        this.id=id;
        this.departure = departure;
        this.destination = destination;
        this.date = date;
        this.time = time;
        this.busno = busno;
    }
    
    public int getId(){
        return id;
    }
    
    public void setId(int id){
        this.id = id;
    }
    
    public String getDeparture(){
        return departure;
    }
    
    public void setDeparture(String departure) {
        this.departure = departure;
    }
    
    public String getDestination(){
        return destination;
    }
    
    public void setDestination(String destination) {
        this.destination = destination;
    }
    
    public String getDate(){
        return date;
    }
    
    public void setDate(String date) {
        this.date = date;
    }
    
    public String getTime(){
        return time;
    }
    
    public void setTime(String time) {
        this.time = time;
    }
    
    public int getBusno(){
        return busno;
    }
    
    public void setBusno(int busno) {
        this.busno = busno;
    }
}
