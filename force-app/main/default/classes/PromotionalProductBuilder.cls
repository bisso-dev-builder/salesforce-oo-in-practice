/**
 * @author eduardo.bisso - dev-builder
 */
public class PromotionalProductBuilder {

    List<PromotionalProduct> promotionalProducts;

    public PromotionalProductBuilder() {
        this.promotionalProducts = new List<PromotionalProduct>();
    }

    public PromotionalProductBuilder withPromotionalProducts ( 
                                        List<PromotionalProduct__c> promotionalProducts ) {
        
        for (PromotionalProduct__c promotionalProduct : promotionalProducts) {

            this.promotionalProducts.add ( buildPromotionalProduct (promotionalProduct) );

        }                                   
        
        return this;

    }

    private PromotionalProduct buildPromotionalProduct ( PromotionalProduct__c promotionalProduct ) {

        return new PromotionalProduct ( promotionalProduct );

    }
    
    public List<PromotionalProduct> build () {
        return this.promotionalProducts;
    }


}