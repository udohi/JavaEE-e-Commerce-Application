/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package session;

import entity.Category;
import entity.Product;
import java.math.BigDecimal;
import java.util.Date;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Udoh Itorobong
 */
@Stateless
public class ProductManager {
    @PersistenceContext(unitName = "TrainersDirectPU")
    private EntityManager em;

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    public Product createProduct(String name, String description, BigDecimal price, short qty, Category category) {
    Product product = new Product();
    product.setName(name);
    product.setDescription(description);
    product.setPrice(price);
    product.setQuantityAvailable(qty);
    product.setLastUpdate(new Date());
    product.setCategoryId(category);
    
    em.persist(product);

    return product;
    }
}
    

