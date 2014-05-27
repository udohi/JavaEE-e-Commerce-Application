<%-- 
    Document   : shoppingcart
    Created on : Apr 14, 2014, 10:12:42 AM
    Author     : Udoh Itorobong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <head>
        <title>Shopping Cart</title>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <link rel="shortcut icon" href="css/images/favicon.ico" />
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

        <script src="js/jquery-1.6.2.min.js" type="text/javascript" charset="utf-8"></script>
        <!--[if IE 6]>
                <script src="js/DD_belatedPNG-min.js" type="text/javascript" charset="utf-8"></script>
        <![endif]-->
        <script src="js/cufon-yui.js" type="text/javascript"></script>
        <script src="js/Myriad_Pro_700.font.js" type="text/javascript"></script>
        <script src="js/jquery.jcarousel.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/functions.js" type="text/javascript" charset="utf-8"></script>
        <script type= "text/javascript" src = "js/countries.js"></script>
        <style>
            .continue {
                -moz-appearance: button;
                -ms-appearance: button;
                -o-appearance: button;
                -webkit-appearance: button;
                appearance: button;
                text-decoration: none;
                color: #000;
                padding: 0.9em 0.8em;
                border-radius:5px;
                width:500px;
                height:60px;
                margin:20px 0 20px 200px;
                background-color:#6ddbe5;
                background-size:45px 45px;
                background-repeat:no-repeat;
                background-position:right;
                font-size:20px;
            }
            .error{
                color:#f00;
            }
            .align{
                text-align:right;
                font-size:18px;
            }
            .box
            {
                width:200px;height:30px;
                border-radius:5px;
            }
            .title{
                font-size:16px;
            }
            td {outline:gray solid 1px;padding:5px;}
            tr:nth-child(even) {
                background-color: #c7eef1;
            }
            tr:hover{
                background-color:#e9f3f4;
            }
        </style>
    </head>
    <body>
        <!-- Begin Wrapper -->
        <div id="wrapper">
            <!-- Include  Header -->
            <%@include file="../jspf/header.jsp" %>
            <!-- Include Navigation -->
            <%@include file="../jspf/navigation.jsp" %>
            <!-- Include  Top-Slider -->
            <%@include file="../jspf/topSlider.jsp" %>
            <div id="main" class="shell">
                <div id="products">

                    <!--user registration starts -->
                    <div style="width:900px;height:auto;background:#f5f5f5; border-radius:5px;"				


                         <div style="margin-left:100px;"><!--inner forms-->
                            <p style="padding-top:10px;font-size:26px;"><img src="css/images/shoppingcart.png" />Shopping Cart</p><br /><br />
                            <c:choose>
                                <c:when test="${empty cart}">
                                     <p style="font-size:16px;">Your shopping cart is empty!</p>
                                </c:when>            
                                <c:otherwise>
                                    <table style="text-align:center;width:100%;">
                                    <tr style="font-weight:bold;font-size:16px;">
                                        <td>
                                            <label>IMAGE</label>
                                        </td>
                                        <td>
                                            <label>PRODUCT NAME</label>
                                        </td>
                                        <td>										
                                            <label>PRODUCT ID</label>
                                        </td>
                                        <td>										
                                            <label>QUANTITY</label>
                                        </td>
                                        <td>										
                                            <label>UNIT PRICE</label>
                                        </td>
                                        <td>										
                                            <label>TOTAL</label>
                                        </td>
                                    </tr>
                                    <c:forEach var="cartItem" items="${cart.items}" varStatus="iter">
                                        <c:set var="product" value="${cartItem.product}"/>
                                        <tr>

                                            <td>
                                                <img src="css/images/${product.name}.jpg" width="100px" height="60px" />
                                            </td>
                                            <td>
                                                <label class="title">${product.name}</label><br />
                                                <p></p>
                                            </td>
                                            <td>										
                                                <label class="title">${product.id}</label>
                                            </td>
                                            <td>
                                                <form name="update_cart" method="POST" action="updateCart.jsp">
                                                <input type="hidden"name="productId"value="${product.id}">
                                              <%--  <input type="text" style="width:60px; height:30px;" name="quantity"  value="${cartItem.quantity}" class="title" text-align:center;/><br /><br />--%>
                                                    <input type="text" name="quantity" value="${cartItem.quantity}" style="width:60px; height:30px;font-size:18px;text-align:center;"/><br /><br />
                                                    <input type="image" src="css/images/load.png" width="30px" height="30px;" alt="Submit"  name="update" value="update" />	&nbsp &nbsp					
                                                    <input type="image" src="css/images/delete.png" width="30px" height="30px;" alt="Submit" name="delete" value="delete"/>
                                                </form>
                                            </td>
                                            <td>										
                                                <label style="font-size:16px; color:#00f;">${product.price}</label>
                                            </td>
                                            <td>										
                                                <label style="font-size:16px; color:#00f;">$${cartItem.total}</label>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </table>

                                <span style="margin:30px;"></span>


                                <table width="100%" font-size="14px" style="margin-top:-8px;">								
                                    <tr style="height:60px;font-size:16px;font-weight:bold;"><td>SUB-TOTAL:</td><td align="center">$${cart.subtotal}</td></tr>
                                    <tr style="height:60px;font-size:16px;font-weight:bold;"><td>FLAT SHIPPING RATE:</td><td align="center">$20.00</td></tr>
                                    <tr style="height:60px;font-size:16px;font-weight:bold;"><td>TOTAL:</td><td align="center">$${cart.total}</td></tr>
                                </table>
                                    
                                    <br></br>
                                    <a href="home.jsp" class="continue" onMouseOver="this.style.backgroundColor = '#E6D5D5'" onMouseOut="this.style.backgroundColor = '#6ddbe5'"/>Continue Shopping</a>
                                    <a href="confirmOrder.jsp" class="continue" onMouseOver="this.style.backgroundColor = '#E6D5D5'" onMouseOut="this.style.backgroundColor = '#6ddbe5'"/>&nbsp;Checkout&nbsp;</a>
               
                               </c:otherwise>
                            </c:choose> 
                            
                            
                            
                    </div>
                    </div>


                    <div id="product-slider">
                        <%@include file="../jspf/bottomSlider.jsp" %>
                    </div>
                </div>
                <!-- Begin Footer -->
                <div id="footer" style="height:215px;">
                    <%@include file="../jspf/topFooter.jsp" %>
                </div>
                <div class="copy">
                    <%@include file="../jspf/baseFooter.jsp" %>   
                </div>
                <!-- End Footer -->   
            </div>
            <!-- End Wrapper -->
    </body>
</html>
