/**
 * @author eduardo.bisso - dev-builder
 */
public class PromotionalProduct {
    
    public String productId;

    public String productCode;

    public Decimal discount;  
    
    public PromotionalProduct (Product2 product) {
        
        this.productId = product.Id;
        this.productCode = product.ProductCode;
        
    }

    public PromotionalProduct (Product2 product, Decimal discount) {
        
        this(product);
        this.discount = discount;
        
    }

}