<%-- 
    Document   : home
    Created on : Apr 13, 2014, 9:44:20 AM
    Author     : Udoh Itorobong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<title>Home</title>
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
    <!-- Begin Wrapper -- <div id="wrapper">
    <!-- Include  Header -->
    <%@include file="WEB-INF/jspf/header.jsp" %>
    <!-- Include Navigation -->
    <%@include file="WEB-INF/jspf/navigation.jsp" %>
    <!-- Include  Top-Slider -->
    <%@include file="WEB-INF/jspf/topSlider.jsp" %>
    <!-- Begin Main -->
    <div id="main" class="shell">
    <!-- Begin Content -->
        <div id="content">
            <div class="post">
		<h2>Welcome!</h2>
		<img src="css/images/post-img.jpg" alt="Post Image" />
	
                <p style="font-size: 14px">This is an individual course work for the course M30CDE: Open Systems Application Development. The course work involves developing an JavaEE e-Commerce application.I made use of the following technologies in developing the web application: HTML5, Javascript(JQuery), CSS, JSP, Servlets, EJB ,JPA and JDBC. 
                    I employed the MVC architecture for the design of the e-commerce application. Feel free to  
                    <a href="http://uk.linkedin.com/pub/itorobong-udoh/81/2bb/785/"> contact me</a>&nbsp;if you love my job.
                </p>
		
                <div class="cl">&nbsp;</div>
	     </div>
	</div>
     <!-- End Content -->
     <!-- Begin Sidebar -->
     <div id="sidebar">
        <ul>
           <li class="widget">
		<h2>TOP Brands</h2>
		<div class="brands">
		   <ul>
		      <li><a href="category.jsp?category=1" title="Nike"><img src="css/images/brand-img1.jpg" alt="Nike" /></a></li>
		      <li><a href="category.jsp?category=3" title="Reebok"><img src="css/images/brand-img2.jpg" alt="Reebok" /></a></li>
		      <li><a href="category.jsp?category=2" title="Adidas"><img src="css/images/brand-img3.jpg" alt="Adidas" /></a></li>
		      <li><a href="category.jsp?category=4" title="Umbro"><img src="css/images/brand-img4.jpg" alt="Umbro" /></a></li>
		   </ul>
		   <div class="cl">&nbsp;</div>
		</div>
	     </li>
	  </ul>
       </div>
       <!-- End Sidebar -->
      <div class="cl">&nbsp;</div>
      <!-- Begin Products -->
      <div id="products">
         <h2>Featured Products</h2>
                                <c:forEach var="product" items="${products}" begin="0" end ="14" varStatus="counter">
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
			<%@include file="WEB-INF/jspf/bottomSlider.jsp" %>
                        </div>
		</div>
		<!-- End Main -->
		<!-- Begin Footer -->
                <div id="footer">
		<%@include file="WEB-INF/jspf/topFooter.jsp" %>
                </div>
                <div class="copy">
                 <%@include file="WEB-INF/jspf/baseFooter.jsp" %>   
                </div>
                <!-- End Footer -->
	    </div>
	<!-- End Wrapper -->
</body>
</html>