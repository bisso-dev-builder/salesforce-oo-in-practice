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

        if (accounts.isEmpty() && leads.isEmpty()) {

            // criar a conta

        }
        
        if (accounts.isEmpty() && !leads.isEmpty()) {

            // converter lead em conta

        }

        if (!accounts.isEmpty()) {

            // só associar a conta

        }


        return new PaymentCallbackResponse(); //new PaymentCallbackResponse(opportunity.Id)
    }
    
}