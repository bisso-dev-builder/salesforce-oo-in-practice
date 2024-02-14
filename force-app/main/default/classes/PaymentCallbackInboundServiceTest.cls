/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class PaymentCallbackInboundServiceTest {

    @TestSetup
    static void setup() {
        
        PricebookFixtureFactory.createPricebook('Campanha DevBuilder');

    }

    @isTest
    public static void shouldCreateOpportunityAndAccount () {
        
        PaymentCallbackInbound callbackInbound = PaymentCallbackInboundFixtureFactory.newPaymentCallbackInbound();

        PaymentCallbackInboundService service = new PaymentCallbackInboundService();

        Assert.areEqual( 0 , findAvailableAccounts ().size() );

        Test.startTest();
        
        PaymentCallbackResponse response = service.processPayment(callbackInbound);
        
        Test.stopTest();

        Assert.isNotNull( response.operationId );

        List<Account> storedAccounts = findAvailableAccounts();

        Assert.areEqual( 1 ,  storedAccounts.size() );

        List<Opportunity> storedOpportunities = findAvailableOpportunities();

        Assert.areEqual( 1 , storedOpportunities.size() );
        Assert.isNotNull( storedOpportunities.get(0).AccountId );

        
    }

    public static List<Account> findAvailableAccounts () {
        return [SELECT Id FROM Account];
    }

    public static List<Opportunity> findAvailableOpportunities () {
        return [SELECT Id, AccountId FROM Opportunity];
    }

    @isTest
    public static void shouldCreateOpportunityWithExistingAccount () {
        

    }


    @isTest
    public static void shouldCreateOpportunityAndConvertLeadToAccount () {
        

    }


}