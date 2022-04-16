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
public class Bus {
    protected int busNo;
    protected String platNo;
    protected String busType;
    protected String busStatus;
    protected String availability;
    
    public Bus(){}
    
    public Bus(String platNo, String busType, String busStatus, String availability){
        super();
        this.platNo = platNo;
        this.busType = busType;
        this.busStatus = busStatus;
        this.availability = availability;
    }
    
    public Bus(int busNo, String platNo, String busType, String busStatus, String availability){
        super();
        this.busNo=busNo;
        this.platNo = platNo;
        this.busType = busType;
        this.busStatus = busStatus;
        this.availability = availability;
    }
    
    
    public int getBusNo(){
        return busNo;
    }
    
    public void setBusNo(int busNo){
        this.busNo = busNo;
    }
    
    public String getPlatNo(){
        return platNo;
    }
    
    public void setPlatNo(String platNo) {
        this.platNo = platNo;
    }
    
    public String getBusType(){
        return busType;
    }
    
    public void setBusType(String busType) {
        this.busType = busType;
    }
    
    public String getBusStatus(){
        return busStatus;
    }
    
    public void setBusStatus(String busStatus) {
        this.busStatus = busStatus;
    }
    
    public String getAvailability(){
        return availability;
    }
    
    public void setAvailability(String availability) {
        this.availability = availability;
    }
}
