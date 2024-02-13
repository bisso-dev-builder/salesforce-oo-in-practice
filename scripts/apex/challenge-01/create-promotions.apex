
List<Promotion__c> promotions = new List<Promotion__c> {
 
   new Promotion__c ( PromotionName__c = 'First Promo'
            , Status__c = 'ACTIVE'
            , StartDate__c = Date.today().addDays(-1)
            , DueDate__c = Date.today().addDays(30) )

 , new Promotion__c ( PromotionName__c = 'Second Promo'
            , Status__c = 'ACTIVE'
            , StartDate__c = Date.today().addDays(-1)
            , DueDate__c = Date.today().addDays(30) )

 , new Promotion__c ( PromotionName__c = 'Other Promo'
            , Status__c = 'ACTIVE'
            , StartDate__c = Date.today().addDays(40)
            , DueDate__c = Date.today().addDays(50) )

};

insert promotions;

List<Product2> products = [SELECT Id from Product2 limit 2];

if (products.isEmpty()) return;

List<PromotionalProduct__c> promotionalProducts = new List<PromotionalProduct__c> {

    new PromotionalProduct__c ( Discount__c = 10
                                    , Product__c = products.get(0).Id
                                    , Promotion__c = promotions.get(0).Id )

  , new PromotionalProduct__c ( Discount__c = 20
                                    , Product__c = products.get(1).Id
                                    , Promotion__c = promotions.get(1).Id )  

  , new PromotionalProduct__c ( Discount__c = 30
                                    , Product__c = products.get(0).Id
                                    , Promotion__c = promotions.get(0).Id ) 

};

insert promotionalProducts;
