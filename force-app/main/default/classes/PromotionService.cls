/**
 * @author eduardo.bisso - dev-builder
 */
public virtual class PromotionService {

    PromotionalProductRepository repository;

    public PromotionService() {
        this.repository = new PromotionalProductRepository();
    }

    virtual
    public List<PromotionalProduct> findPromotionalProducts ( List<String> productIds ) {

        List<PromotionalProduct__c> promotionalProducts = 
                                        this.repository.findAvailablePromotionsForProducts(productIds);
        
        return null;
    }

}