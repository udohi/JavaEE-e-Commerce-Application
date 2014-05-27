/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package session;

import entity.Customer;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Udoh Itorobong
 */
@Stateless
public class CustomerManager {
    @PersistenceContext(unitName = "TrainersDirectPU")
    private EntityManager em;

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    public Customer createCustomer(String firstname, String lastname, String email, String password, String phone, String address, String city, String country) {
    Customer customer = new Customer();
    customer.setFirstname(firstname);
    customer.setEmail(email);
    customer.setPhone(phone);
    customer.setAddress(address);
    customer.setCity(city);
    customer.setPassword(password);
    customer.setLastname(lastname);
    customer.setCountry(country);
    
    em.persist(customer);

    return customer;
    }
}
