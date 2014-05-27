<%-- 
    Document   : bottomSlider
    Created on : Apr 13, 2014, 12:13:35 PM
    Author     : Udoh Itorobong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2>Best Products</h2>
<ul>
    <c:forEach var="product" items="${products}" begin="15" end ="23" varStatus="counter">
        <li>
            <a href="viewProduct.jsp?${product.id}" title="${product.description}"><img src="css/images/${product.name}.jpg" alt="Product Image" /></a>
            <div class="info">
                <h4>${product.name}</h4>
                <span class="number">Product ${product.id}</span>
                <span class="price"><span>$</span>${product.price}</span>
                <div class="cl">&nbsp;</div>
            </div>
        </li>
    </c:forEach>

</ul>
<div class="cl">&nbsp;</div>

