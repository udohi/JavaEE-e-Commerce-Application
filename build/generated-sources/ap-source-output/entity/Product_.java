package entity;

import entity.Category;
import entity.OrderedProduct;
import java.math.BigDecimal;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.1.v20130918-rNA", date="2014-05-27T11:43:39")
@StaticMetamodel(Product.class)
public class Product_ { 

    public static volatile SingularAttribute<Product, Integer> id;
    public static volatile SingularAttribute<Product, BigDecimal> price;
    public static volatile SingularAttribute<Product, Short> quantityAvailable;
    public static volatile SingularAttribute<Product, String> description;
    public static volatile SingularAttribute<Product, Date> lastUpdate;
    public static volatile CollectionAttribute<Product, OrderedProduct> orderedProductCollection;
    public static volatile SingularAttribute<Product, String> name;
    public static volatile SingularAttribute<Product, Category> categoryId;

}