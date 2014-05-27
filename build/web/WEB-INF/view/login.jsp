<%-- 
    Document   : login
    Created on : Apr 13, 2014, 12:42:13 PM
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
            <%@include file="../jspf/header.jsp" %>
            <!-- Include Navigation -->
            <%@include file="../jspf/navigation.jsp" %>
            <!-- Include  Top-Slider -->
            <%@include file="../jspf/topSlider.jsp" %>
            <!-- Begin Main -->
            <div id="main" class="shell">
                <div class="cl">&nbsp;</div>
                <!-- Begin Content -->
                <div id="products">
                    <!--user registration starts -->
                    <div style="width:900px;height:auto; border-radius:5px;"

                         <p style="font-size:40px;"></p><br /><br />
                        <strong style="font-size:18px;margin-left:440px;background:#f5f5f5;padding:5px;border-radius:5px 5px 0 0;">Account Login:</strong>
                        <div style="margin-left:60px;"><!--inner forms-->
                            <div style="width:100%;">
                                <c:choose>
                                    <c:when test="${ not empty guest}">
                                        <!--Guest -->
                                        <div style="width:350px;float:left;height:230px;border-radius:5px;padding:10px;background:#f5f5f5;">
                                            <img src="css/images/new_user.png" width="50px;" height="50px;" align="left"/><strong style="font-size:22px;margin-left:10px;padding:5px;">Hi Guest</strong><br />
                                            <span style="margin-left:15px;font-size:16px;">Continue without signing in</span><br /><br /><hr /><br />
                                            <p style="font-size:14px; text-align:justify;">
                                                You can register for an account after purchase.<br>
                                                You can also &nbsp;<a href="register.jsp">register for an account now.</a> 
                                            </p><br /><hr /><br />
                                            <input type="hidden" name="guestCustomer" value="guest">
                                            <strong style="font-size:20px;margin-top:15px;"><a href="guest.jsp">Continue as a guest</a><br /><br /><hr /></strong>
                                        </div>
                                        <!--Guest ends -->
                                    </c:when>
                                    <c:otherwise>
                                        <!--New customer -->
                                        <div style="width:350px;float:left;height:230px;border-radius:5px;padding:10px;background:#f5f5f5;">
                                            <img src="css/images/new_user.png" width="50px;" height="50px;" align="left"/><strong style="font-size:22px;margin-left:10px;padding:5px;">New Customer</strong><br />
                                            <span style="margin-left:15px;font-size:16px;">Register Account</span><br /><br /><hr /><br />
                                            <p style="font-size:14px; text-align:justify;">By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p><br /><hr /><br />
                                            <strong style="font-size:20px;margin-top:15px;"><a href="register.jsp">Continue</a><br /><br /><hr /></strong>
                                        </div>
                                        <!--New customer div ends -->
                                    </c:otherwise>
                                </c:choose>
                                <!--Login customers-->
                                <div style="width:450px;float:left;height:240px;margin-left:10px;padding:5px;background:#f5f5f5;border-radius:5px;">
                                    <form name="login" method="POST" action="loginCustomer.jsp" >

                                        <img src="css/images/keys.png" width="60px;" height="60px;" align="left"/><strong style="font-size:22px;margin-left:10px;padding:5px;">Returning Customer</strong><br />
                                        <span style="margin-left:15px;font-size:16px;">I am a returning customer</span><br /><br /><hr /><br />
                                        <p style="font-size:14px; text-align:justify;">

                                            <table cellspacing="8px">
                                                <tr><td class="align">E-mail Address:</td><td><input class="box" type="text" name="email" placeholder="Your email here" required/></td> </tr>
                                                <tr><td class="align">Password:</td><td><input class="box" type="password" name="password" placeholder="Your password here" required/></td></tr>
                                                <tr>
                                                    <td><font color="#f00"><a href="#"><u>Forgotten Password !!!</u></a></font></td><td><input style="width:100px;height:40px;font-size:18px;margin-left:100px;" type="submit" value="Login" /></td>
                                                </tr>
                                                <tr>
                                                    <td>${info}</td>
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
                <div id="product-slider" style="margin-top:300px;margin-bottom:20px;">
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
