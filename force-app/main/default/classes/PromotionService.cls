/**
 * @author eduardo.bisso - dev-builder
 */
public virtual class PromotionService {

    PromotionalProductRepository repository;

    PromotionalProductFilter filter;

    public PromotionService() {
        this.repository = new PromotionalProductRepository();
        this.filter = new PromotionalProductFilter();
    }

    virtual
    public List<PromotionalProduct> findPromotionalProducts ( List<String> productIds ) {

        List<PromotionalProduct__c> promotionalProducts = 
                                        this.repository.findAvailablePromotionsForProducts(productIds);
        
        List<PromotionalProduct__c> filteredPromotionalProducts = 
                                        filter.indexPromotionalProducts (promotionalProducts).values();

        return new PromotionalProductBuilder()
                            .withPromotionalProducts (filteredPromotionalProducts)
                            .build();

    }

}