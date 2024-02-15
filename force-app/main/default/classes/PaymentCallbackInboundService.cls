/**
 * @author eduardo.bisso - dev-builder
 */
public class PaymentCallbackInboundService {

    PayerSearcher searcher;

    CreateOpportutityCallbackFactory factory;
   
    public PaymentCallbackInboundService() {
        this.searcher = new PayerSearcher();
        this.factory = new CreateOpportutityCallbackFactory();
    }

    public PaymentCallbackResponse processPayment ( PaymentCallbackInbound payment ) {

        List<List<SObject>> payers = searcher.search( payment?.payer?.document );

        BaseCreateOpportunityCallback callbackService = this.factory.getStrategy(payers);

        Opportunity opportunity = callbackService.createOpportunity(payment);
        
        return new PaymentCallbackResponse(opportunity.Id);
    }
    
}