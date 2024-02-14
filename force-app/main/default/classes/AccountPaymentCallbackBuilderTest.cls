/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class AccountPaymentCallbackBuilderTest {

    @isTest
    public static void shouldCreateAccountFromPaymentCallbackInbound () {
        
        PaymentCallbackInbound callbackInbound = PaymentCallbackInboundFixtureFactory.newPaymentCallbackInbound();

        Test.startTest();
        
        Account account = new AccountPaymentCallbackBuilder().toAccount(callbackInbound);
        
        Test.stopTest();

        PaymentCallbackInbound.Payer payer = callbackInbound?.payer;
        
        Assert.areEqual(payer.name, account.Name);
        Assert.areEqual(payer.document, account.DocumentNumber__c);
        Assert.areEqual('Campanha DevBuilder', account.AccountSource);
        Assert.areEqual(payer.billing.street, account.BillingStreet);
        Assert.areEqual(payer.billing.city, account.BillingCity);
        Assert.areEqual(payer.billing.state, account.BillingState);
        Assert.areEqual(payer.billing.zipCode, account.BillingPostalCode);
        Assert.areEqual(payer.billing.country, account.BillingCountry);


    }

    @isTest
    public static void shouldCreateAccountFromPaymentCallbackInboundWithoutBillingAddress () {
        
        PaymentCallbackInbound callbackInbound = PaymentCallbackInboundFixtureFactory.newPaymentCallbackWithoutBillingAddress();
        
        Test.startTest();
        
        Account account = new AccountPaymentCallbackBuilder().toAccount(callbackInbound);
        
        Test.stopTest();

        PaymentCallbackInbound.Payer payer = callbackInbound?.payer;
        
        Assert.areEqual(payer.name, account.Name);
        Assert.areEqual(payer.document, account.DocumentNumber__c);
        Assert.areEqual('Campanha DevBuilder', account.AccountSource);
        Assert.isNull(account.BillingStreet);
        Assert.isNull(account.BillingCity);
        Assert.isNull(account.BillingState);
        Assert.isNull(account.BillingPostalCode);
        Assert.isNull(account.BillingCountry);

    
    }

}