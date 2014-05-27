<%-- 
    Document   : confirmOrder
    Created on : Apr 14, 2014, 10:54:45 AM
    Author     : Udoh Itorobong
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <head>
        <title>Confirm Order</title>
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
        <script>
            function validate() {
                var x = document.forms["registration"]["email"].value;
                var atpos = x.indexOf("@");
                var dotpos = x.lastIndexOf(".");
                if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length)
                {
                    alert("Not a valid e-mail address");
                    return false;
                }

                var password = document.registration.password.value;

                var confirm_password = document.registration.confirm_password.value;

                if (password != confirm_password)
                {
                    alert("password didn't match.");
                    password.focus;
                    return false;
                }



            }</script>
        </script>
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
            .title{
                font-size:16px;
                color:#00f;
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
                    <div style="width:900px;height:auto;background:#f5f5f5; border-radius:5px;"				


                         <div style="margin-left:100px;"><!--inner forms-->
                            <p style="font-size:26px;margin-bottom:-15px;"><img src="css/images/confirm_header.png" align="middle"/>Confirm Your Order</p><br /><br />
                            <form name="registration" method="GET" action="billing.jsp" onsubmit="return validate()"  >

                                <table style="text-align:center;width:100%;">
                                    <tr style="font-weight:bold;font-size:16px;">

                                        <td style="padding:10px 10px;">
                                            <label name="name">PRODUCT NAME</label>
                                        </td>
                                        <td>										
                                            <label name="model">MODEL</label>
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
                                    <c:forEach var="cartItem" items="${cart.items}" varStatus="iter">
                                        <c:set var="product" value="${cartItem.product}"/>
                                        <tr>

                                            <td>
                                                <label class="title" >${product.name}</label><br />

                                            </td>
                                            <td>										
                                                <label class="title">${product.id}</label>
                                            </td>
                                            <td>										
                                                <label style="font-size:16px; color:#00f;">${cartItem.quantity}</label>

                                            </td>
                                            <td>										
                                                <label style="font-size:16px; color:#00f;">$${product.price}</label>
                                            </td>
                                            <td>										
                                                <label style="font-size:16px; color:#00f;">$${cartItem.total}</label>
                                            </td>
                                        </tr>
                                    </c:forEach>		

                                    <tr style="height:60px;font-size:16px;font-weight:bold;color:#00f;"><td colspan="4">SUB-TOTAL:</td><td align="center">$${cart.subtotal}</td></tr>
                                    <tr style="height:60px;font-size:16px;font-weight:bold;color:#00f;"><td colspan="4">FLAT SHIPPING RATE:</td><td align="center">$20.00</td></tr>
                                    <tr style="height:60px;font-size:18px;font-weight:bold;color:#00f;"><td colspan="4">TOTAL:</td><td align="center">$${cart.total}</td></tr>
                                </table>
                                <input type="submit" value="Confirm Order" name="confirm_order" style="border-radius:5px;width:200px;height:60px;margin:20px 0 20px 600px;background-image:url('css/images/confirm.png');background-color:#6ddbe5;background-size:45px 45px;background-repeat:no-repeat;background-position:right;text-align:left;font-size:20px;padding-left:10px;"  onMouseOver="this.style.backgroundColor = '#035492'" onMouseOut="this.style.backgroundColor = '#6ddbe5'"/>
                            </form>
                        </div><!--end of inner forms -->
                    </div>
                </div>
                <div id="product-slider" style="margin-left:170px;margin-bottom:70px;margin-top:-30px;">
                    <%@include file="../jspf/bottomSlider.jsp" %>
                </div>
            </div>
            <!-- Begin Footer -->
            <div id="footer" style="height:215px">
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

