/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com;

import entity.Customer;
import java.io.IOException;
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
@WebServlet(name = "BillingServlet", urlPatterns = {"/billing.jsp","/guest.jsp"})
public class BillingServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session= request.getSession();
        String userPath = request.getServletPath();
        
        if (userPath.equals("/billing.jsp")){
        Customer selectedCustomer = (Customer) session.getAttribute("customer");
             if (selectedCustomer== null){
                  request.setAttribute("guest","guest");
                  userPath = "/WEB-INF/view/login.jsp";
             }
             else{
                 userPath = "/WEB-INF/view/billing.jsp";
             }
        }
        if (userPath.equals("/guest.jsp")){
            userPath = "/WEB-INF/view/billing.jsp";
             
        }     
             try {
            request.getRequestDispatcher(userPath).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        
    }

    
    }   

}
