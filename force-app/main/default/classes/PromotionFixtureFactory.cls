/**
 * @author: eduardo.bisso - dev-builder
 */
@isTest
public class PromotionFixtureFactory {

    public static Promotion__c createPromotion() {
        return  createPromotion ( 'Test' );
    }

    public static Promotion__c createPromotion(String name) {
        return  createPromotion ( newPromotion( name ) );
    }

    public static Promotion__c newPromotion(String name) {

        Date yesterday = Date.today().addDays(-1);        

        return new Promotion__c ( PromotionName__c = name
            , Status__c = 'ACTIVE'
            , StartDate__c = yesterday
            , DueDate__c = yesterday.addDays(30) ); 
    }

    public static Promotion__c newPromotion() {
        return newPromotion( 'Test' );
    }

    public static Promotion__c createPromotion(Promotion__c promotion) {

        insert promotion;
        return promotion;

    }

    public static Promotion__c fromJson (String payload) {
        return (Promotion__c) JSON.deserialize(payload, Promotion__c.class);
    }
    
    public static List<Promotion__c> fromJsonArray (String payload) {
        return (List<Promotion__c>) JSON.deserialize(payload, List<Promotion__c>.class);
    }


}
