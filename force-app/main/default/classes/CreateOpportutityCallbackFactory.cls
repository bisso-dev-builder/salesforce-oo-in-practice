/**
 * 
 */
public class CreateOpportutityCallbackFactory {

    
    public BaseCreateOpportunityCallback getStrategy ( List<List<SObject>> payers ) {        

        List<Account> accounts = payers.get(0);

        List<Lead> leads = payers.get(1);

        BaseCreateOpportunityCallback callbackService;

        if (accounts.isEmpty() && leads.isEmpty()) {

           return new CreateAccountOpportunityCallback();

        }
        
        if (accounts.isEmpty() && !leads.isEmpty()) {

            callbackService = new ConvertLeadOpportunityCallback();
            callbackService.setPayer( leads.get(0) );
            return callbackService;

        }

        if (!accounts.isEmpty()) {

            callbackService = new HasAccountOpportunityCallback();
            callbackService.setPayer( accounts.get(0) );
            return callbackService;

        }

        return null;

    }

}