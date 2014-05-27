/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import entity.Product;
import java.io.IOException;
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
@WebServlet(name = "ViewProductServlet", urlPatterns = {"/viewProduct.jsp"})
public class ViewProductServlet extends HttpServlet {

    private Product selectedProduct;

    private List<Product> products;
    private Integer productId;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String query = request.getQueryString();
         this.productId=Integer.parseInt(query);

        products = (List) getServletContext().getAttribute("products");

        // get selected product
        selectedProduct = findProduct();
        session.setAttribute("selectedProduct", selectedProduct);

        String url = "/WEB-INF/view/viewProduct.jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
    
    private Product findProduct(){
        Product product= null;
        for (int i = 0; i < products.size(); i++)
            if (products.get(i).getId() == productId) {
                product=products.get(i);
                break;
            }
       return product;
    }
}
