<%-- 
    Document   : billing
    Created on : Apr 13, 2014, 4:34:08 PM
    Author     : Udoh Itorobong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <head>
        <title>Billing Details</title>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <link rel="shortcut icon" href="css/images/favicon.ico" />
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <script src="js/jquery-1.4.2.js" type="text/javascript"></script>
        <script src="js/jquery.validate.js" type="text/javascript"></script>
        <!--[if IE 6]>
                <script src="js/DD_belatedPNG-min.js" type="text/javascript" charset="utf-8"></script>
        <![endif]-->
        <script src="js/cufon-yui.js" type="text/javascript"></script>
        <script src="js/Myriad_Pro_700.font.js" type="text/javascript"></script>
        <script src="js/jquery.jcarousel.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/functions.js" type="text/javascript" charset="utf-8"></script>
        <script type= "text/javascript" src = "js/countries.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $("#billForm").validate({
                    rules: {
                        creditcard: {
                            required: true,
                            creditcard: true
                        }
                    },
                    messages: {
                        creditcard: "Please enter a valid credit card number."
                    },
                    errorContainer: $('#errorContainer'),
                    errorLabelContainer: $('#errorContainer ul'),
                    wrapper: 'li'
                });
            });
        </script>
        <script>
            function validate() {
                var phone = document.getElementById("phone");
                var RE = /^[\d\.\-]+$/;
                if (!RE.test(phone.value))
                {
                    alert("You have entered an invalid phone number");
                    return false;
                }
                var x = document.forms["billForm"]["email"].value;
                var atpos = x.indexOf("@");
                var dotpos = x.lastIndexOf(".");
                if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length)
                {
                    alert("Not a valid e-mail address");
                    return false;
                }
            }
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
                    <h3 style="margin-left:360px;font-size:20px;margin-bottom:15px;"> PURCHASE ORDER</h3>
                    <!--Billing Details starts -->
                    <div style="width:900px;height:auto;background:#f5f5f5; border-radius:5px;"/>

                    <p style="font-size:40px;"></p><br /><br />

                    <div style="margin-left:100px;">

                        <form name="billForm" id="billForm" method="POST" action="confirmation.jsp" onsubmit="return validate()">
                            <h2>Billing Details</h2>

                            <table cellspacing="10px">
                                <tr>
                                    <td class="align"><label>* First Name:</label></td>
                                    <td><input class="box" type="text" name="fname" required /></td>
                                </tr>
                                <tr>
                                    <td class="align"><label>* Last Name:</label></td>
                                    <td><input class="box" type="text" name="lname" required /></td>
                                </tr>
                                <tr>
                                    <td class="align"><label>* Email: </label></td>
                                    <td><input class="box" type="text" name="email" required /></td>
                                </tr>
                                <tr>
                                    <td class="align"><label>* Phone Number: </label></td>
                                    <td><input class="box" type="text" name="phoneNo" id="phone" required /></td>
                                </tr>
                                <tr>
                                    <td class="align"><label>* Address :</label></td>
                                    <td><input class="box" type="text" name="address" required /></td>
                                </tr>
                                <tr>
                                    <td class="align"><label>* Country:</label></td>
                                    <td><select style="width:205px;height:30px;border-radius:5px;" id="country" name ="country"  required></select></td>
                                </tr>
                                <tr>
                                    <td class="align"><label>* City/State:</label></td>
                                    <td><select style="width:205px;height:30px;border-radius:5px;" name ="state" id ="state"  required></select></td>
                                </tr>
                                <script language="javascript">
                                    populateCountries("country", "state");
                                </script>
                                <tr>
                                    <td class="align"><label>* Card Type:</label></td>
                                    <td>
                                        <select style="width:205px;height:30px;border-radius:5px;"  name ="card_type"  required>
                                            <option value="" >Select a Card Type</option>
                                            <option value="visa">Visa</option>
                                            <option value="master">Master</option>
                                            <option value="amex">American Express</option>


                                        </select>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="align"><label>* Credit Card Number:</label></td>
                                    <td><input  class="box" type="text" id="creditcard" name="creditcard" maxlength="19" required /></td>
                                    <div id="errorContainer">

                                        <ul />
                                    </div>
                                </tr>

                                <tr>
                                    <td class="align"><label>* Expiry Date:</label></td>
                                    <td><select style="width:205px;height:30px;border-radius:5px;"  name ="expiry_month"  required>
                                            <option selected value=''>--Select Month--</option>
                                            <option value='1'>Janaury</option>
                                            <option value='2'>February</option>
                                            <option value='3'>March</option>
                                            <option value='4'>April</option>
                                            <option value='5'>May</option>
                                            <option value='6'>June</option>
                                            <option value='7'>July</option>
                                            <option value='8'>August</option>
                                            <option value='9'>September</option>
                                            <option value='10'>October</option>
                                            <option value='11'>November</option>
                                            <option value='12'>December</option>	

                                        </select>
                                        <select style="width:205px;height:30px;border-radius:5px;"  name ="expiry_year"  required>						
                                            <option selected value=''>--Select Year--</option>
                                            <option value='1'>2014</option>
                                            <option value='2'>2015</option>
                                            <option value='3'>2016</option>
                                            <option value='4'>2017</option>
                                            <option value='5'>2018</option>
                                            <option value='6'>2019</option>
                                            <option value='7'>2020</option>
                                            <option value='8'>2021</option>
                                            <option value='9'>2022</option>
                                            <option value='10'>2023</option>
                                            <option value='11'>2024</option>
                                            <option value='12'>2025</option>	

                                        </select>

                                    </td>
                                </tr>

                            </table><br />


                            <input style="width:150px; height:40px;margin:10px 0 10px 200px;font-size:18px; border-radius:5px;"type="submit" Value="Make Payment" onMouseOver="this.style.backgroundColor = '#035492'" onMouseOut="this.style.backgroundColor = '#cccccc'" />

                        </form>
                    </div>
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
