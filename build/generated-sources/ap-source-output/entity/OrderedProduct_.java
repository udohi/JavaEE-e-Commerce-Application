package entity;

import entity.CustomerOrder;
import entity.OrderedProductPK;
import entity.Product;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2014-05-27T11:43:39")
@StaticMetamodel(OrderedProduct.class)
public class OrderedProduct_ { 

    public static volatile SingularAttribute<OrderedProduct, Product> product;
    public static volatile SingularAttribute<OrderedProduct, OrderedProductPK> orderedProductPK;
    public static volatile SingularAttribute<OrderedProduct, CustomerOrder> customerOrder;
    public static volatile SingularAttribute<OrderedProduct, Short> quantity;

}