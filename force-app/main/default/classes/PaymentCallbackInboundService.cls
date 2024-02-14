/**
 * @author eduardo.bisso - dev-builder
 */
public class PaymentCallbackInboundService {

    PayerSearcher searcher;
   
    public PaymentCallbackInboundService() {
        this.searcher = new PayerSearcher();
    }

    public PaymentCallbackResponse processPayment ( PaymentCallbackInbound payment ) {

        List<List<SObject>> payers = searcher.search( payment?.payer?.document );

        List<Account> accounts = payers.get(0);

        List<Lead> leads = payers.get(1);

        PaymentCallbackInbound.Payer payer = payment?.payer;

        BaseCreateOpportunityCallback callbackService;

        if (accounts.isEmpty() && leads.isEmpty()) {

           callbackService = new CreateAccountOpportunityCallback();

        }
        
        if (accounts.isEmpty() && !leads.isEmpty()) {

            callbackService = new ConvertLeadOpportunityCallback();
            callbackService.setPayer( leads.get(0) );

        }

        if (!accounts.isEmpty()) {

            callbackService = new HasAccountOpportunityCallback();
            callbackService.setPayer( accounts.get(0) );

        }

        Opportunity opportunity = callbackService.createOpportunity(payment);
        
        return new PaymentCallbackResponse(opportunity.Id);
    }
    
}