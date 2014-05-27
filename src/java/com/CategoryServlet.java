/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import entity.Category;
import entity.Product;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import session.CategoryFacade;
import session.CustomerFacade;
import session.CustomerOrderFacade;
import session.ProductFacade;

/**
 *
 * @author Udoh Itorobong
 */
@WebServlet(name = "CategoryServlet", urlPatterns = {"/category.jsp"}, loadOnStartup = 1)
public class CategoryServlet extends HttpServlet {

    @EJB
    private CustomerFacade customerFacade;

    @EJB
    private ProductFacade productFacade;

    @EJB
    private CategoryFacade categoryFacade;

    @EJB
    private CustomerOrderFacade orderFacade;

    @Override
    public void init() throws ServletException {
        List productList=productFacade.findAll(); // retrieve the  product list
        Collections.shuffle(productList); // shuffle the product list
        getServletContext().setAttribute("products", productList); // store product list in servlet context       
        getServletContext().setAttribute("users", customerFacade.findAll());// store customer list in servlet context
        getServletContext().setAttribute("orders", orderFacade.findAll()); // store order list in servlet context
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get categoryId from request
        Category selectedCategory;
        Collection<Product> categoryProducts;
        HttpSession session = request.getSession();

        String categoryId = request.getParameter("category");

        // get selected category i.e It returns a row in the Category Table     
        selectedCategory = categoryFacade.find(Short.parseShort(categoryId));

        // place selected category in session scope
        session.setAttribute("selectedCategory", selectedCategory);

        // get all products for selected category
        categoryProducts = selectedCategory.getProductCollection();

        // place category products in session scope
        session.setAttribute("categoryProducts", categoryProducts);

        String url = "/WEB-INF/view/category.jsp";

        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
