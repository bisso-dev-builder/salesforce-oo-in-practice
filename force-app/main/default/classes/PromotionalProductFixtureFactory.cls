/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class PromotionalProductFixtureFactory {

    public static PromotionalProduct__c createPromotionalProduct( Promotion__c promotion
                                                                , Product2 product ) {

        return  createPromotionalProduct ( newPromotionalProduct( promotion, product  ) );

    }

    public static PromotionalProduct__c newPromotionalProduct(Promotion__c promotion
                                                            , Product2 product) {
        return new PromotionalProduct__c ( Discount__c = 10
                                    , Product__c = product.Id
                                    , Promotion__c = promotion.Id ); 

    }

    public static PromotionalProduct__c createPromotionalProduct(PromotionalProduct__c promotionalProduct) {

        insert promotionalProduct;
        return promotionalProduct;

    }

    public static PromotionalProduct__c fromJson (String payload) {
        return (PromotionalProduct__c) JSON.deserialize(payload, PromotionalProduct__c.class);
    }
    
    public static List<PromotionalProduct__c> fromJsonArray (String payload) {
        return (List<PromotionalProduct__c>) JSON.deserialize(payload, List<PromotionalProduct__c>.class);
    }

    @isTest
    public static Map<String, SObject> createIntegratedScenario () {

        Map<String, SObject> records = new Map<String, SObject>();

        Promotion__c promotion = PromotionFixtureFactory.createPromotion();
        records.put('promotion', promotion );

        Product2 product = ProductFixtureFactory.createProduct('TestPromo');
        records.put('product', product );
        
        PromotionalProduct__c promotionalProduct = createPromotionalProduct ( promotion, product );
        records.put('promotionalProduct', promotionalProduct );
        
        return records;

    }

    @isTest
    public static Map<String, SObject> createIntegratedScenarioWithMultiplePromotions () {

        Map<String, SObject> records = new Map<String, SObject>();

        Promotion__c promotion = PromotionFixtureFactory.createPromotion();
        records.put('promotionOne', promotion );

        Promotion__c promotionTwo = PromotionFixtureFactory.createPromotion();
        records.put('promotionTwo', promotionTwo );
        
        Product2 product = ProductFixtureFactory.createProduct('TestPromo');
        records.put('product', product );
        
        PromotionalProduct__c promotionalProduct = createPromotionalProduct ( promotion, product );
        records.put('promotionalProduct', promotionalProduct );

        PromotionalProduct__c promotionalProductTwo = createPromotionalProduct ( promotionTwo, product );
        records.put('promotionalProductTwo', promotionalProductTwo );

        
        return records;

    }

}
