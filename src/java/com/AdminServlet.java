/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import entity.Admin;
import entity.Category;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.Collection;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import session.AdminFacade;
import session.CategoryFacade;
import session.ProductFacade;
import session.ProductManager;

/**
 *
 * @author Udoh Itorobong
 */
@WebServlet(name = "AdmiinServlet", urlPatterns = {"/adminpage.jsp", "/delete.jsp","/addProduct.jsp","/navigate.jsp"})
public class AdminServlet extends HttpServlet {

    @EJB
    private CategoryFacade categoryFacade;
    
    @EJB
    private ProductFacade productFacade;

    @EJB
    private AdminFacade adminFacade;
    
    @EJB
    private ProductManager productManager;

    Collection<Admin> admin;

    HttpSession session;

    String userPath;
    
    boolean IsAdminValid;
    
    Category selectedCategory;
    int firstrow=0;
    int lastrow=7;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        userPath = request.getServletPath();

        if (userPath.equals("/adminpage.jsp")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            admin = adminFacade.findAll();
            for (Admin administrator : admin) {
                if ((administrator.getUsername().equals(username) & (administrator.getPassword().equals(password)))) {
                    session= request.getSession();
                    session.setAttribute("admin", administrator);
                    userPath = "/WEB-INF/view/admin.jsp";
                    IsAdminValid = true;
                    session.setAttribute("firstrow", firstrow);
                    session.setAttribute("lastrow", lastrow);

                }
            }
            if (!IsAdminValid) {
                String info = " You have entered a wrong username or password";
                request.setAttribute("adminInfo", info);
                userPath = "/adminLogin.jsp";

            }

        }
        if (userPath.equals("/delete.jsp")) {
            PrintWriter out = response.getWriter();
            // String s=(Object) request.getParameter()
            out.print("request.");
        }
        if (userPath.equals("/addProduct.jsp")) {
            String productName=(String) request.getParameter("name");
            String Stringprice=(String) request.getParameter("price");
            double dprice= Double.valueOf(Stringprice);
            BigDecimal price = new BigDecimal(dprice);
            String description=(String) request.getParameter("description");
            String StrQuantity=(String) request.getParameter("qty");
            short quantity= Short.valueOf(StrQuantity);
            String category=(String) request.getParameter("category");
            selectedCategory = categoryFacade.find(Short.parseShort(category));
            productManager.createProduct(productName, description, price, quantity, selectedCategory);
            userPath = "/WEB-INF/view/admin.jsp";
             }
        
        if (userPath.equals("/navigate.jsp")) {
           int lastElement=productFacade.count();
            String nav= (String)request.getParameter("subject");
            if(nav.equals("next")){
                firstrow= firstrow+8;
                lastrow=lastrow+8;
                if (lastrow>lastElement)
                    lastrow=lastElement;
                if(firstrow>lastElement)
                    firstrow=lastElement;
                userPath = "/WEB-INF/view/admin.jsp"; 
                request.getSession().setAttribute("firstrow", firstrow);
                request.getSession().setAttribute("lastrow", lastrow);
            }
            else{
                firstrow= firstrow-8;
                int var=lastrow-8;
                if (var<lastElement)
                    lastrow=var;
                else
                    lastrow=lastElement;
                userPath = "/WEB-INF/view/admin.jsp"; 
                request.getSession().setAttribute("firstrow", firstrow);
                request.getSession().setAttribute("lastrow", lastrow);
                
            }
            
            
        }

        try {
            request.getRequestDispatcher(userPath).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
}
