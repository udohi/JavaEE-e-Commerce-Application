<%-- 
    Document   : comfirmation
    Created on : Apr 23, 2014, 9:47:10 AM
    Author     : Udoh Itorobong
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <head>
        <title>Confirmation</title>
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
            <%@include file="../jspf/navigation.jsp"%>
            <div id="main" class="shell">
                <div id="products">
                    <h3 style="margin-left:360px;font-size:20px;margin-bottom:15px;"> CONFIRMATION OF ORDER</h3>
                    <div style="width:900px;height:auto;background:#f5f5f5; border-radius:5px;">
                        <p style="font-size:40px;"></p><br /><br />
                        <div style="margin-left:100px;"></div>
                        <h2>&nbsp;&nbsp;Confirmation</h2>
                        <p id="confirmationText">
                            <c:choose>
                               <c:when test="${empty customer}">
                                    <strong> Hi &nbsp;${firstName},</strong><br><br>
                              </c:when>
                              <c:otherwise>
                                    <strong>Hi &nbsp;${customer.firstname}</strong><br><br>
                               </c:otherwise>
                           </c:choose>
                            
                            Your order has been successfully processed and will be delivered within 24 hours.<br>
                            Please keep a note of your confirmation number:<strong>${confirmationNo}</strong><br>
                            If you have a query concerning your order,feel free to 
                            <a href="http://uk.linkedin.com/pub/itorobong-udoh/81/2bb/785/">contact us </a>
                            <br><br>
                            Thank you for shopping at TrainersDirect!
                        </p>
                        <div class="cl">&nbsp;</div>
                        <h2>&nbsp;&nbsp;Order Summary</h2>
                        <br>
                        <table style="text-align:center;width:100%;">
                            <tr style="font-weight:bold;font-size:16px;">
                                <td style="padding:10px 10px;">
                                    <label name="name">PRODUCT NAME</label>
                                </td>
                                <td>										
                                    <label name="quantity">QUANTITY</label>
                                </td>
                                <td>										
                                    <label name="unit_price">UNIT PRICE</label>
                                </td>
                                <td>										
                                    <label name="total">TOTAL</label>
                                </td>
                            </tr>
                            <c:forEach var="cartItem" items="${selectedcart.items}" varStatus="iter">
                                <c:set var="product" value="${cartItem.product}"/>
                                <tr>
                                    <td>
                                        <label style="font-size:16px;">${product.name}</label><br />
                                    </td>
                                    <td>										
                                        <label style="font-size:16px;">${cartItem.quantity}</label>
                                    </td>
                                    <td>										
                                        <label style="font-size:16px;">$${product.price}</label>
                                    </td>
                                    <td>										
                                        <label style="font-size:16px;">$${cartItem.total}</label>
                                    </td>
                                </tr>
                            </c:forEach>		
                            <tr style="height:40px;font-size:16px;font-weight:bold;"><td colspan="3">SUB-TOTAL:</td><td align="center">$${selectedcart.subtotal}</td></tr>
                            <tr style="height:40px;font-size:16px;font-weight:bold;"><td colspan="3">FLAT SHIPPING RATE:</td><td align="center">$20.00</td></tr>
                            <tr style="height:40px;font-size:18px;font-weight:bold;"><td colspan="3">TOTAL:</td><td align="center">$${selectedcart.total}</td></tr>
                        </table>
                        <div class="cl">&nbsp;</div>
                        <br>
                        <h2>&nbsp;&nbsp;Delivery Details</h2>
                        <br>
                        <c:choose>
                               <c:when test="${empty customer}">
                                   <div style="font-size:16px;"> 
                                      <strong>&nbsp;Delivery Address:</strong> &nbsp;${address}
                                  </div>
                                  <br>
                                  <div style="font-size:16px;"> 
                                      <strong>&nbsp;Email Address:</strong> &nbsp;${email}
                                  </div>
                                  <br>
                                  <div style="font-size:16px;"> 
                                      <strong>&nbsp;Phone Number:</strong> &nbsp;${phoneNo}
                                  </div>
                                  <br>
                              </c:when>
                              <c:otherwise>
                                  <div style="font-size:16px;"> 
                                      <strong>&nbsp;Delivery Address:</strong> &nbsp;${customer.address}
                                  </div>
                                  <br>
                                  <div style="font-size:16px;"> 
                                      <strong>&nbsp;Email Address:</strong> &nbsp;${customer.email}
                                  </div>
                                  <br>
                                  <div style="font-size:16px;"> 
                                      <strong>&nbsp;Phone Number:</strong> &nbsp;${customer.phone}
                                  </div>
                                  <br>
                              </c:otherwise>
                          </c:choose>
                     </div>
                 </div>
            </div>
        </div>
        <div class="cl">&nbsp;</div>
        <!-- Begin Footer -->
        <div id="footer" style="height:215px">
            <%@include file="../jspf/topFooter.jsp" %>
        </div>
        <div class="copy">
            <%@include file="../jspf/baseFooter.jsp" %>   
     </body>
</html>