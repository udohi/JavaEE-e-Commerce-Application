/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import com.cart.ShoppingCart;
import entity.Customer;
import entity.Product;
import java.io.IOException;
import java.util.Collection;
import java.util.List;
import java.util.Random;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import session.CustomerFacade;
import session.CustomerManager;
import session.OrderManager;

/**
 *
 * @author Udoh Itorobong
 */
@WebServlet(name = "ShoppingCartController", urlPatterns = {"/addToCart.jsp", "/registerCustomer.jsp", "/loginCustomer.jsp", "/confirmation.jsp",})
public class ShoppingCartController extends HttpServlet {

    private Product selectedProduct;

    private List<Product> products;

    @EJB
    private CustomerManager customerManager;

    @EJB
    private OrderManager orderManager;

    @EJB
    private CustomerFacade customerFacade;

    Collection<Customer> customers;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userPath = request.getServletPath();
        HttpSession session = request.getSession();
        ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
        Integer productId;
        boolean IsCustomerValid = false;

        if (userPath.equals("/addToCart.jsp")) {
            // if user is adding item to cart for first time
            // create cart object and attach it to user session
            if (cart == null) {
                cart = new ShoppingCart();
                session.setAttribute("cart", cart);
            }

            String query = request.getQueryString();
            productId=Integer.parseInt(query);
            String quantity = request.getParameter("quantity");

            if (!query.isEmpty()) {
                products = (List) getServletContext().getAttribute("products");
                // get selected product
                selectedProduct = findProduct(productId);
                cart.addItem(selectedProduct, quantity);
            }
            userPath = "/home.jsp";
         } 
            

         //         if register action action is called
        
        else if (userPath.equals("/registerCustomer.jsp")) {
            String firstname = request.getParameter("fname");
            String lastname = request.getParameter("lname");
            String email = request.getParameter("email");
            String phone = request.getParameter("telephone");
            String address = request.getParameter("address1");
            String city = request.getParameter("state");
            String password = request.getParameter("password");
            String country = request.getParameter("country");
            Customer customer = customerManager.createCustomer(firstname, lastname, email, password, phone, address, city, country);
            // session.setAttribute("customer", customer);
            userPath = "/WEB-INF/view/account.jsp";
        } 
        
        else if (userPath.equals("/loginCustomer.jsp")) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            customers = customerFacade.findAll();
            for (Customer customer : customers) {
                if ((customer.getEmail().equals(email) & (customer.getPassword().equals(password)))) {
                    session.setAttribute("customer", customer);
                    userPath = "/home.jsp";
                    IsCustomerValid = true;

                }
            }
            if (!IsCustomerValid) {
                String info = " You have entered a wrong email address or pasword";
                request.setAttribute("info", info);
                userPath = "/WEB-INF/view/login.jsp";

            }

        } else if (userPath.equals("/confirmation.jsp")) {
            Customer selectedCustomer = (Customer) session.getAttribute("customer");
            ShoppingCart selectedCart = (ShoppingCart) session.getAttribute("cart");
            if (selectedCustomer!=null){
            orderManager.placeOrder(selectedCustomer, selectedCart);
            }
            
            String firstName= request.getParameter("fname");
            String lastName= request.getParameter("lname");
            String email= request.getParameter("email");
            String phoneNo= request.getParameter("phoneNo");
            String address= request.getParameter("address");
            int confirmationNumber = new Random().nextInt(999999999);
            
            request.setAttribute("selectedcart", selectedCart);
            request.setAttribute("firstName", firstName);
            request.setAttribute("lastName", lastName);
            request.setAttribute("email", email);
            request.setAttribute("phoneNo", phoneNo);
            request.setAttribute("address", address);
            request.setAttribute("confirmationNo", confirmationNumber);
            session.removeAttribute("cart");

            userPath = "/WEB-INF/view/confirmation.jsp";

        }
        
         else if (userPath.equals("/billing.jsp")) {
            
       }
        
        
        

        // use RequestDispatcher to forward request internally
        try {
            request.getRequestDispatcher(userPath).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    private Product findProduct(int productId ){
        Product product= null;
        for (int i = 0; i < products.size(); i++)
            if (products.get(i).getId() == productId) {
                product=products.get(i);
                break;
            }
       return product;
    }

}
