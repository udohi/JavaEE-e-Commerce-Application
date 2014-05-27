<%-- 
    Document   : adminLogin
    Created on : Apr 22, 2014, 4:50:06 AM
    Author     : Udoh Itorobong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<title>Login</title>
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
	a:hover{text-decoration:none;color:#ccc;}
	.box
	{
		width:200px;height:30px;
		border-radius:5px;
	}
	</style>
        
</head>
<body>
<!-- Begin Wrapper -->
<div id="wrapper">
    <!-- Include  Header -->
                <%@include file="WEB-INF/jspf/header.jsp" %>
		<!-- Include Navigation -->
                <%@include file="WEB-INF/jspf/navigation.jsp" %>
		
		<!-- Begin Main -->
                <div id="main" class="shell">
                    <div class="cl">&nbsp;</div>
		    <!-- Begin Content -->
		     <div id="products">
                         	<!--user registration starts -->
				<div style="width:900px;height:auto; border-radius:5px;"
				
					<p style="font-size:40px;"></p><br /><br />
					<strong style="font-size:18px;margin-left:250px;background:#f5f5f5;padding:5px;border-radius:5px 5px 0 0;">Account Login:</strong>
					<div style="margin-left:60px;"><!--inner forms-->
					
					
					
							<div style="width:100%;">	
							<div style="width:450px;margin-right:auto;height:240px;margin-left:auto;padding:5px;background:#f5f5f5;border-radius:5px;">
							<form name="login" method="POST" action="adminpage.jsp" >
					
									<img src="css/images/adminlogo.jpg" width="60px;" height="60px;" align="left"/><strong style="font-size:22px;margin-left:10px;padding:5px;">Administrator</strong><br />
								<span style="margin-left:15px;font-size:16px;">login as an administrator</span><br /><br /><hr /><br />
								<p style="font-size:14px; text-align:justify;">
										
										<table cellspacing="8px">
											<tr><td class="align">Username:</td><td><input class="box" type="text" name="username" placeholder="Your username here" required/></td> </tr>
											<tr><td class="align">Password:</td><td><input class="box" type="password" name="password" placeholder="Your password here" required/></td></tr>
											<tr>
												<td><input style="width:100px;height:40px;font-size:18px;margin-left:100px;" type="submit" value="Login" /></td>
											</tr>
                                                                                        <tr>
												<td>${adminInfo}</td>
											</tr>
										</table>
								
								</p><br /><hr />
							</form>
							</div>
							<!--Login Customer-->
							</div>
						
							
						
					</div><!--end of inner forms -->
				</div><!--User registration Ends -->
                                 </div>
                    
		</div>
		<!-- Begin Footer -->
                <div id="footer" style="height:215px;">
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

