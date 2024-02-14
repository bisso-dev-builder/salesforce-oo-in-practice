/**
 * @author eduardo.bisso - dev-builder
 */
public class AccountPaymentCallbackBuilder {

    public Account toAccount (PaymentCallbackInbound callbackInbound) {

        PaymentCallbackInbound.Payer payer = callbackInbound?.payer;
        
        return new Account (
            Name = payer.name,
            DocumentNumber__c = payer.document,
            AccountSource = 'Campanha DevBuilder',
            BillingStreet = payer?.billing?.street,
            BillingCity = payer?.billing?.city,
            BillingState = payer?.billing?.state,
            BillingPostalCode = payer?.billing?.zipCode,
            BillingCountry = payer?.billing?.country
        );
    }
     

}