/**
 * @author eduardo.bisso - dev-builder
 */
public class OpportunityPaymentCallbackBuilder {
    
       
    public Opportunity toOpportunity ( PaymentCallbackInbound callbackInbound , Pricebook2 pricebook, Account account )  {

        return new Opportunity (
            Name = callbackInbound?.payer.name,
            AccountId = account.Id,
            Pricebook2Id = priceBook.Id,
            CloseDate = Date.today(),
            StageName = 'Closed Won',
            LeadSource = 'Campanha DevBuilder'
        );

    }

}