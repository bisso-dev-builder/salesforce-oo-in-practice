/**
 * @author eduardo.bisso - dev-builder
 */
public virtual class PromotionalProductRepository {

    virtual
    public List<PromotionalProduct__c> findAvailablePromotionsForProducts ( List<String> productIds ) {

        return [SELECT Discount__c                     
                    , Product__r.Id, Product__r.ProductCode
                    , Id 
                FROM PromotionalProduct__c
                WHERE Product__c IN :productIds
                    AND Promotion__r.StartDate__c <= TODAY 
                    AND Promotion__r.DueDate__c >= TODAY
                    AND Promotion__r.Status__c = 'ACTIVE'
                ORDER BY Promotion__r.CreatedDate, Promotion__c
         ];

    }


}