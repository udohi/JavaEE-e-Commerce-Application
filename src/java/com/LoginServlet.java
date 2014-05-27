/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

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
@WebServlet(name = "LoginServlet", urlPatterns = {"/login.jsp", "/logout.jsp","/account.jsp"})
public class LoginServlet extends HttpServlet {

    /**
     * Handles the HTTP GET method.
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userPath = request.getServletPath();
     
        String url = "/home.jsp";
        if (userPath.equals("/login.jsp")) {
            url = "/WEB-INF/view/login.jsp";
        } 
        else if (userPath.equals("/logout.jsp")) {
            session.invalidate();
        }
        
        if (userPath.equals("/account.jsp")) {
            url = "/WEB-INF/view/login.jsp";
        }
        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}
