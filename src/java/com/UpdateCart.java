/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import com.cart.ShoppingCart;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Udoh Itorobong
 */
@WebServlet(name = "UpdateCart", urlPatterns = {"/updateCart.jsp"})
public class UpdateCart extends HttpServlet {
    List<Product> products;
    Integer productId;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
        Product selectedProduct;
        String userPath = request.getServletPath();

        //  get input from request
        String productid = request.getParameter("productId");
        this.productId=Integer.parseInt(productid);
        
        String quantity = request.getParameter("quantity");
        String optiondelete = request.getParameter("delete.x");
        String optionupdate = request.getParameter("update.x");
        products = (List) getServletContext().getAttribute("products");
        selectedProduct = findProduct();
        userPath = "/WEB-INF/view/shoppingcart.jsp";

        if (!productid.isEmpty()) {
            if (optionupdate != null) {
            cart.update(selectedProduct, quantity);
            
            
            }
            if (optiondelete != null) {
                quantity="0";
                cart.update(selectedProduct, quantity);
                
            }
        }

        try {
            request.getRequestDispatcher(userPath).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
    
    public Product findProduct(){
        Product product= null;
        for (int i = 0; i < products.size(); i++)
            if (products.get(i).getId() == productId) {
                product=products.get(i);
                break;
            }
       return product;
    }

}
