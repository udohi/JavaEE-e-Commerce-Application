<%-- 
    Document   : header
    Created on : Apr 13, 2014, 10:17:16 AM
    Author     : Udoh Itorobong
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="header">
    <div class="shell">
        <h1 id="logo"><a class="notext" href="#" title="TrainersDirect">TrainersDirect</a></h1>
        <div id="top-nav">
            <ul id="main-menu">
                <li><a href="home.jsp" title="Home"><span>Home</span></a></li>
                <li><a href="shoppingcart.jsp" title="Shopping Cart"><span>Shopping Cart</span></a></li>
                <li><a href="login.jsp" title="Login"><span>Login</span></a></li>
                <li><a href="register.jsp" title="Create Account"><span>Create Account</span></a></li>
                <li><a href="logout.jsp" title="Logout"><span>Logout</span></a></li>
            </ul>
        </div>
        <div class="cl">&nbsp;</div>
        <c:set var="customerName" scope="session" value="${customer.firstname}"/>
        <c:choose>
            <c:when test="${empty customerName and empty admin}">
                <p id="cart"><span class="profile">Welcome,Guest. </span><span class="shopping">Shopping Cart (${cart.numberOfItems}) <a href="#" title="Shopping Cart"> $${cart.subtotal}</a></span></p>
            </c:when>
            <c:when test="${not empty admin}">
                <p id="cart"><span class="profile">Welcome,Administrator. </span><span class="shopping">Shopping Cart (${cart.numberOfItems}) <a href="#" title="Shopping Cart"> $${cart.subtotal}</a></span></p>
            </c:when>
            <c:otherwise>
                <p id="cart"><span class="profile">Welcome,${customer.firstname}. </span><span class="shopping">Shopping Cart (${cart.numberOfItems}) <a href="#" title="Shopping Cart"> $${cart.subtotal}</a></span></p>
            </c:otherwise>
        </c:choose>
    </div>
</div>
