<%-- 
    Document   : viewProduct
    Created on : Apr 14, 2014, 10:27:03 AM
    Author     : Udoh Itorobong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <head>
        <title>View Product</title>
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
                    <div style="width:900px;height:auto; border-radius:5px;"

                         <p style="font-size:40px;"></p><br /><br />
                        <strong style="font-size:18px;margin-left:60px;background:#f5f5f5;padding:5px;border-radius:5px 5px 0 0;">Product Details:</strong>
                        <div style="margin-left:60px;"><!--inner forms-->					

                            <div style="width:100%;">	
                                <!--Product Details -->
                                <div style="width:100%;float:left;height:230px;border-radius:5px;padding:10px;background:#f5f5f5;">

                                    <form action="addToCart.jsp?${selectedProduct.id}" method="POST">
                                        <div><!--inner contents -->
                                            <img src="css/images/${selectedProduct.name}.jpg" width="40%" height="230px" align="left" style="border-radius:5px;margin-right:5px;"/>

                                            <h2>${selectedProduct.name}</h2>
                                            <p style="font-size:18px;line-height:15px;">
                                                <!--Product code and Availability Section -->
                                                Product Code:<b style="color:#f00;">Product &nbsp ${selectedProduct.id}</b><br /><br />
                                                Availability:<b style="background-color:#0f0;font-size:18px;">IN STOCK</b> &nbsp &nbsp
                                                Size:<Select style="font-size:16px;width:80px;height:30px;border-radius:5px;background-color:#ccc;">
                                                    <option><a href="#">Value</a></option>
                                                    <option><a href="#">Size 8</a></option>
                                                    <option><a href="#">Size 9</a></option>
                                                    <option><a href="#">Size 10</a></option>
                                                    <option><a href="#">Size 11</a></option>
                                                    <option><a href="#">Size 12</a></option>
                                                </select>

                                            </p><br /><hr />

                                            <br />

                                            <!--Price Section -->
                                            <b style="font-size:20px;">Price:</b><b style="color:#f00;font-size:28px;"> $ ${selectedProduct.price}</b><br></br><hr />


                                            <!--Quantity Add to Cart section -->
                                            <b style="font-size:20px;">Quantity:</b>
                                            <input type="text" name="quantity" value="1" style="width:60px; height:30px;font-size:18px;text-align:center;"/>
                                            <input type="SUBMIT" name="add_tocart" Value="Add To Cart" style="background-color:#6ddbe5;background-image:url('images/shopping_cart.png'); background-repeat:no-repeat;background-size:40px 40px;font-size:22px;padding-left:25px;margin-top:5px; font-weight:bold;width:170px;height:50px;border-radius:5px; margin-left:20px;margin-right:10px; "  onMouseOver="this.style.backgroundColor = '#E6D5D5'" onMouseOut="this.style.backgroundColor = '#C9BDBD'" />
                                        </div>
                                    </form>
                                    <!--Inner Contents div ends -->

                                </div>		<!--Product Details Ends-->				
                            </div><!--end of inner forms -->
                        </div><!--Product Main Content Ends -->

                    </div>
                </div>
                <div id="product-slider" style="margin-top:300px;">
                    <%@include file="../jspf/bottomSlider.jsp" %>	
                </div>
            </div>
        </div>
        <!-- Begin Footer -->
        <div id="footer">
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
