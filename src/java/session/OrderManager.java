/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package session;

import com.cart.ShoppingCart;
import com.cart.ShoppingCartItem;
import entity.Customer;
import entity.CustomerOrder;
import entity.OrderedProduct;
import entity.OrderedProductPK;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Random;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Udoh Itorobong
 */
@Stateless
public class OrderManager {
    
    @PersistenceContext(unitName = "TrainersDirectPU")
    private EntityManager em;

    public int placeOrder(Customer customer, ShoppingCart cart) {
        CustomerOrder order = addOrder(customer, cart);
        addOrderedItems(order, cart);
        return order.getId();
    }

    private CustomerOrder addOrder(Customer customer, ShoppingCart cart) {
        // set up customer order
    CustomerOrder order = new CustomerOrder();
    order.setCustomerId(customer);
    order.setAmount(BigDecimal.valueOf(cart.getTotal()));

    // create confirmation number
    Random random = new Random();
    int i = random.nextInt(999999999);
    order.setConfirmationNumber(i);
    
    // create date the order was created
  //  Timestamp timeStampDate = new Timestamp(System.currentTimeMillis());
    order.setDateCreated(new Date ());
    
    em.persist(order);

    return order;
    }

    private void addOrderedItems(CustomerOrder order, ShoppingCart cart) {
        
        em.flush();
        
        List<ShoppingCartItem> items = cart.getItems();

    // iterate through shopping cart and create OrderedProducts
    for (ShoppingCartItem scItem : items) {

        int productId = scItem.getProduct().getId();

        // set up primary key object
        OrderedProductPK orderedProductPK = new OrderedProductPK();
        orderedProductPK.setCustomerOrderId(order.getId());
        orderedProductPK.setProductId(productId);

        // create ordered item using PK object
        OrderedProduct orderedItem = new OrderedProduct(orderedProductPK);

        // set quantity
        orderedItem.setQuantity(scItem.getQuantity());
        
        em.persist(orderedItem);
    }
    
  }  
    
    
    
}
