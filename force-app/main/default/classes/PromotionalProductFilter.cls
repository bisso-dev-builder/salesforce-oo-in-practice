/**
 * @author eduardo.bisso - dev-builder
 */
public class PromotionalProductFilter {
    

    public Map<String, PromotionalProduct__c> indexPromotionalProducts (
                                                    List<PromotionalProduct__c> promotionalProducts ) {

        Map<String, PromotionalProduct__c> indexedPromotionalProducts = new Map<String, PromotionalProduct__c>();

        for (PromotionalProduct__c promotionalProduct : promotionalProducts) {

            if ( indexedPromotionalProducts.containsKey (promotionalProduct.Id) ) continue;

            indexedPromotionalProducts.put (promotionalProduct.Id, promotionalProduct);

        }

        return indexedPromotionalProducts;

    }

}