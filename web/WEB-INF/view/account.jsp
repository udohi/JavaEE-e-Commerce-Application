<%-- 
    Document   : register
    Created on : Apr 13, 2014, 3:55:46 PM
    Author     : Udoh Itorobong 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <head>
        <title>Register</title>
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
        </style>
    </head>
    <body>
        <!-- Begin Wrapper -->
        <div id="wrapper">
            <!-- Include  Header -->
            <%@include file="../jspf/header.jsp" %>
            <!-- Include Navigation -->
            <%@include file="../jspf/navigation.jsp"%>
            <!-- Include  Top-Slider -->
            <%@include file="../jspf/topSlider.jsp" %>
            <div id="main" class="shell">
                <div id="products">
                    <h3 style="margin-left:360px;font-size:20px;margin-bottom:15px;">Registered Customer</h3>
                    <!--user registration starts -->
                    <div style="width:900px;height:auto;background:#f5f5f5; border-radius:5px;">
                        <p style="font-size:40px;"></p><br /><br />
                        <div style="margin-left:50px; font-size: 16px">Congratulations! You have successfully created an account with TrainersDirect.<br /><br>
                                <a href="login.jsp">Click here to login</a> 
                        </div><br /><br>              
                    </div>
                </div>
                <div id="product-slider">
                    <%@include file="../jspf/bottomSlider.jsp" %>
                </div>
            </div>
            <!-- End Main -->
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

