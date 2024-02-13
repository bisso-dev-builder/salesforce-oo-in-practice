/**
 * @author eduardo.bisso - dev-builder
 */
public class PromotionalProduct {
    
    public String productId;

    public String productCode;

    public Decimal discount;  

    public String promotionalProductId;
    
    public PromotionalProduct (Product2 product) {
        
        this.productId = product.Id;
        this.productCode = product.ProductCode;
        
    }

    public PromotionalProduct (Product2 product, Decimal discount) {
        
        this(product);
        this.discount = discount;
        
    }

    public PromotionalProduct (Product2 product, Decimal discount, String promotionalProductId) {
        
        this(product, discount);
        this.promotionalProductId = promotionalProductId;
        
    }

    public PromotionalProduct ( PromotionalProduct__c promotionalProduct ) {

        this (promotionalProduct.Product__r
            , promotionalProduct.Discount__c
            , promotionalProduct.Id );
    }

}