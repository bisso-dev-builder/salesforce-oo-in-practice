/**
 * @author eduardo.bisso - dev-builder
 */
@isTest (isParallel=true)
public class PromotionServiceTest {

    @isTest
    public static void shouldReturnOldPromotion () {

        Map<String, SObject> records = PromotionalProductFixtureFactory.createIntegratedScenarioWithMultiplePromotions();

        Product2 product = (Product2) records.get('product');

        PromotionalProduct__c expected = (PromotionalProduct__c) records.get('promotionalProduct');

        PromotionService service = new PromotionService();

        Test.startTest();

        List<PromotionalProduct> promotionalProducts = service.findPromotionalProducts( new List<String> {
                                                                                                product.Id
                                                                                            } );
        
        Test.stopTest();
                                
        Assert.isFalse(promotionalProducts.isEmpty());

        Assert.areEqual( expected.Discount__c, promotionalProducts.get(0).discount);
        Assert.areEqual( expected.Id, promotionalProducts.get(0).promotionalProductId);
      

    }


}