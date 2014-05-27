<%-- 
    Document   : admin
    Created on : Apr 14, 2014, 11:29:07 AM
    Author     : Udoh Itorobong
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en-US" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
    <head>
        <title>Admin</title>
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
        <script src="js/jquery-1.9.1.js"></script>
        <script src="js/jquery-ui.custom.js"></script>
        <link rel="stylesheet" href="css/jquery-ui.css" />
        <script>

            $(document).ready(function() {
                $("#admin").tabs();
            });


        </script>

        <style>
            td {outline:gray solid 1px;padding:5px;}
            tr:nth-child(even) {
                background-color: #c7eef1;
            }
            tr:hover{
                background-color:#e9f3f4;
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
            .view:hover
            {
                background-image:url('css/images/backhover.png');
                background-repeat:repeat-x;
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

            <div id="main" class="shell">
                <div id="products">
                    <h3 style="font-size:20px;color:#FA5400;padding-left:20px;padding-top:20px;background-color:#f5f5f5;width:200px;height:40px;border-radius:10px 10px 0px 0px;">Admin DashBoard</h3>
                    <!--Adminsection starts -->
                    <div style="width:900px;height:auto;background:#f5f5f5; border-radius:5px;padding-bottom:20px;">

                        <p style="font-size:40px;"></p><br /><br />
                        <h2 style="margin-left:50px;">Logged In As : <strong style="color:#3A9ABD">ADMIN</strong></h2><br /><br />
                        <div style="margin-left:100px;padding-bottom:-30px;"><!--inner forms-->

                            <div id="admin" style="margin-left:-60px;margin-right:15px; "><!--start of tabs -->
                                <ul>
                                    <li><a href="#product_list">Product List</a></li>
                                    <li><a href="#add_product">Add Product</a></li>
                                    <li><a href="#user_list">User List</a></li>
                                    <li><a href="#customer_order">Customer Order History</a></li>
                                </ul>
                                <!--Start of Product List -->
                                <div id="product_list">
                                    <form action="navigate.jsp" method="POST">
                                        <button name="subject"  value="previous"style="margin-left:530px;width:120px; height:40px;color:#fff; background-image:url('css/images/back.png'); background-repeat:repeat-x; border-radius:5px;"onMouseOver="this.style.color = '#000'" onMouseOut="this.style.color = '#fff'">Previous</button>
                                        <button name="subject" value="next"style="width:120px; height:40px;color:#fff; background-image:url('css/images/back.png'); background-repeat:repeat-x; border-radius:5px; float: right"  onMouseOver="this.style.color = '#000'" onMouseOut="this.style.color = '#fff'">Next</button> 
                                    </form>
                                    <br></br>
                                    <table style="text-align:center;width:100%;">
                                        <tr style="font-weight:bold;font-size:14px;">
                                            <td>Product ID</td>
                                            <td>Product Name</td>
                                            <td>Price</td>
                                            <td>Description</td>
                                            <td>Quantity Available</td>
                                            <td>Image</td>
                                            <td>Delete Item</td>
                                        </tr>
                                        <c:forEach var="product" items="${products}" begin="${firstrow}" end ="${lastrow}" varStatus="counter">
                                            <tr>
                                                <form action="delete.jsp" method="POST">
                                                    <td>${product.id}</td>
                                                    <td>${product.name}</td>
                                                    <td>${product.price}</td>
                                                    <td>${product.description}</td>
                                                    <td>${product.quantityAvailable}</td>
                                                    <td><input type="image" src="css/images/${product.name}.jpg" width="70px" height="70px" /></td>
                                                    <td><button type="submit" name="${product.id}">Delete</button></td>
                                                </form>    
                                            </tr>
                                        </c:forEach>

                                    </table>


                                </div><!--End of Product List -->
                                <!--Start of Add Product -->

                                <div id="add_product">
                                    <div style="margin-left:100px;">
                                        <form name="addProduct" method="POST" action="addProduct.jsp" >
                                            <h2>Enter Product Details</h2>
                                            <table cellspacing="10px" border="0px">
                                                <tr>
                                                    <td class="align"><label> Product Name:</label></td>
                                                    <td><input class="box" type="text" name="name" required /></td>
                                                </tr>
                                                <tr>
                                                    <td class="align"><label>Price</label></td>
                                                    <td><input class="box" type="text" name="price" required /></td>
                                                </tr>
                                                <tr>
                                                    <td class="align"><label>Description</label></td>
                                                    <td><input class="box" type="text" name="description" required /></td>
                                                </tr>
                                                <tr>
                                                    <td class="align"><label>Quantity Available</label></td>
                                                    <td><input class="box" type="text" name="qty" required /></td>
                                                </tr>
                                                <tr>
                                                    <td class="align"><label>Select Category</label></td>
                                                    <td>
                                                        <select style="width:205px;height:33px;border-radius:5px;"  name ="category"  required>
                                                            <option value="1">Nike</option>
                                                            <option value="2">Adidas</option>
                                                            <option value="3">Reebok</option>
                                                            <option value="4">Umbro</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                            </table><br />
                                            <input style="width:150px; height:40px;margin:10px 0 10px 200px;font-size:18px; border-radius:5px;"type="submit" Value="Add Product" onMouseOver="this.style.backgroundColor = '#035492'" onMouseOut="this.style.backgroundColor = '#cccccc'" />
                                        </form>         
                                    </div>                           

                                </div><!--End of Product List -->

                                <!--Start of User List -->
                                <div id="user_list">


                                    <input type="button" value=" << Previous" style="margin-left:450px;width:120px; height:40px;color:#fff; background-image:url('css/images/back.png'); background-repeat:repeat-x; border-radius:5px;" name="view_history" id="history" onMouseOver="this.style.color = '#000'" onMouseOut="this.style.color = '#fff'"/>

                                    <input  type="button" value="Next >>" style="width:120px; height:40px;color:#fff; background-image:url('css/images/back.png'); background-repeat:repeat-x; border-radius:5px;" name="view_history" id="history" onMouseOver="this.style.color = '#000'" onMouseOut="this.style.color = '#fff'"/> 

                                    <h4><u>1</u> | 2 | 3 </h4>


                                    <table style="text-align:center;width:100%;">
                                        <tr style="font-weight:bold;font-size:14px;">

                                            <td>Customer ID</td>
                                            <td>First Name</td>
                                            <td>Last Name</td>
                                            <td>E-mail</td>
                                            <td>Password</td>
                                            <td>Phone No.</td>
                                            <td>Country</td>
                                            <td>City</td>
                                        </tr>
                                        <c:forEach var="user" items="${users}" begin="0" end ="7" varStatus="counter"> 

                                            <tr>
                                                <td>${user.id}</td>
                                                <td>${user.firstname}</td>
                                                <td>${user.lastname}</td>
                                                <td>${user.email}</td>
                                                <td>${user.password}</td>
                                                <td>${user.phone}</td>
                                                <td>${user.country}</td>
                                                <td>${user.city}</td>
                                            </tr>
                                        </c:forEach>
                                    </table>


                                </div><!--End of User list-->

                                <!--Start of customer order History -->
                                <div id="customer_order">

                                    <div style="padding-left:30px;">
                                        <strong>Enter Customer E-mail:</strong><input type="text" name="c_email" style="width:200px;padding-left:5px;height:40px;border-radius:5px;" placeholder="Customer E-mail here" />

                                        <input class="view" type="button" value="View Order History" style="width:140px; height:40px;color:#fff; background-image:url('css/images/back.png'); background-repeat:repeat-x; border-radius:5px;" name="view_history" id="history" onMouseOver="this.style.color = '#000'" onMouseOut="this.style.color = '#fff'"/><br /><br />



                                        <table style="text-align:center;width:100%;">
                                            <tr style="font-weight:bold;font-size:16px;">
                                                <td>Customer ID</td>
                                                <td>Order ID</td>
                                                <td>Confirmation No.</td>
                                                <td>Amount</td>
                                                <td>Date Created</td>
                                            </tr>
                                            <c:forEach var="order" items="${orders}" begin="0" end ="14" varStatus="counter"> 
                                                <tr>
                                                    <td>

                                                        <jsp:useBean id="category" class="com.ProductBean"/> 
                                                        <jsp:setProperty name="category" property="categoryId"value="${order.customerId}"/>
                                                        <jsp:getProperty name="category" property="categoryId"/> 

                                                    </td>
                                                    <td>${order.id}</td>

                                                    <td>${order.confirmationNumber}</td>
                                                    <td>${order.amount}</td>
                                                    <td>${order.dateCreated}</td>
                                                </tr>
                                            </c:forEach>

                                        </table>

                                        <h4><u>1</u> | 2 | 3 </h4>

                                        <input type="button" value=" << Previous" style="margin-left:250px;width:120px; height:40px;color:#fff; background-image:url('css/images/back.png'); background-repeat:repeat-x; border-radius:5px;" name="view_history" id="history" onMouseOver="this.style.color = '#000'" onMouseOut="this.style.color = '#fff'"/>

                                        <input  type="button" value="Next >>" style="width:120px; height:40px;color:#fff; background-image:url('css/images/back.png'); background-repeat:repeat-x; border-radius:5px;" name="view_history" id="history" onMouseOver="this.style.color = '#000'" onMouseOut="this.style.color = '#fff'"/>



                                    </div>
                                </div><!--End of Customer Order History-->

                            </div><!--end of tabs-->					


                        </div><!--end of inner forms -->
                    </div><!--Admin section Ends -->

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
