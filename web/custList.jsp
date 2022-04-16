<%-- 
    Document   : custList
    Created on : Jun 20, 2021, 8:19:39 AM
    Author     : USER
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bus Availability</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/c29dc15947.js" crossorigin="anonymous"></script>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
        
    .navbar-brand {
        padding-right: 80px;
        font-family: Andale Mono, monospace;
        font-size: 20px;
    }  

    .container .row {
        margin: auto;   
        justify-content: center;  
        align-items: center; 
    }
    
    footer {
        position: absolute;
        right: 0;
        width: 100%;
    }
    fieldset label {
        font-size: 18px;
    }
    .table {
        margin: auto;
        text-align: center;
        margin-bottom: 20px;
    }
        </style>
    </head>
    
    <body style="background: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5) ), url(https://i.pinimg.com/originals/e9/37/b4/e937b41e96b2270eefdc7c2831307452.png);">
        <header>
            <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                <div>
                    <a href="" class="navbar-brand">Customer Details</a>
                </div>
                
                <ul class="varbar-nav">
                <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Customer Details</a></li>
            </ul>
            
            </nav>
        </header>
        <br>
        <div class="row">
            
            <div class="container">
                <h3 class="text-center"style="background-color:white">List of Customer Details</h3>
                <hr>
                <br>
                <table class="table table-bordered" style="background-color:white">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>FIRST NAME</th>
                            <th>LAST NAME</th>
                            <th>EMAIL</th>
                            <th>PHONE NUMBER</th>
                            <th>ADDRESS</th>
                            <th>CARD NUMBER</th>
                            <th>NAME ON CARD</th>
                            <th>CARD TYPE</th>
                            <th>VALID THROUGH</th>
                            <th>CVV</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="customer" items="${listCustomer}">
                            <tr>
                                <td>
                                    <c:out value="${customer.id}"/>
                                </td>
                                <td>
                                    <c:out value="${customer.firstname}"/>
                                </td>
                                <td>
                                    <c:out value="${customer.lastname}"/>
                                </td>
                                <td>
                                    <c:out value="${customer.email}"/>
                                </td>
                                <td>
                                    <c:out value="${customer.phonenumber}"/>
                                </td>
                                <td>
                                    <c:out value="${customer.address}"/>
                                </td>
                                <td>
                                    <c:out value="${customer.cardnumber}"/>
                                </td>
                                <td>
                                    <c:out value="${customer.nameoncard}"/>
                                </td>
                                <td>
                                    <c:out value="${customer.cardtype}"/>
                                </td>
                                <td>
                                    <c:out value="${customer.validthrough}"/>
                                </td>
                                <td>
                                    <c:out value="${customer.cvv}"/>
                                </td>
                                
                               <td><a href="edit?id=<c:out value='${customer.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="delete?id=<c:out value='${customer.id}'/>">Delete</a></td>
                               
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        
    </body>
</html>
