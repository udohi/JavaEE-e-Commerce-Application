<%-- 
    Document   : category
    Created on : Apr 14, 2014, 9:59:02 AM
    Author     : Udoh Itorobong
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <head>
        <title>Category</title>
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
                <div class="cl">&nbsp;</div>
                <div id="products">
                    <h2><img src="css/images/${selectedCategory.name}.jpg" style="margin-right:10px;"/>${selectedCategory.name}</h2>
                    <c:forEach var="product" items="${categoryProducts}" begin="0" end ="6" varStatus="counter">
                        <div class="product" style="display:inline-block">

                            <a href="viewProduct.jsp?${product.id}" title="${product.description}"><img src="css/images/${product.name}.jpg" alt="Product Image" /></a>
                            <div class="price">
                                <div class="inner">
                                    <span class="title">Price</span>
                                    <strong<span>$</span>${product.price}</strong>

                                </div>
                            </div>
                            <div class="info">
                                <p>${product.name}</p>
                                <p class="number">Product ${product.id}</p>
                            </div>
                        </div>
                        <c:if test="${counter.count%5==0}">
                            <div class="cl">&nbsp;</div>   
                        </c:if>
                    </c:forEach>

                    <div class="cl">&nbsp;</div>
                </div>
                <!-- End Products -->
                <!-- Begin Bottom Slider -->
                <div id="product-slider">
                    <%@include file="../jspf/bottomSlider.jsp" %>
                </div>
            </div>
            <!-- End Main -->
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