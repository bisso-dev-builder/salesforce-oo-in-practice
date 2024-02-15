
public class ConvertLeadOpportunityCallback extends BaseCreateOpportunityCallback {

    LeadConverterService leadConverterService;
   
    public ConvertLeadOpportunityCallback() {
        this.leadConverterService = new LeadConverterService();
    }

    override
    public Account buildAccount () {
                    
        Database.LeadConvertResult convertResult = 
                    leadConverterService.convertWithoutOpportunity( (Lead) getPayer() );

        return  new Account( Id = convertResult.getAccountId());

    }
    
    override
    public Boolean accept (List<List<SObject>> payers) {

        List<Account> accounts = (List<Account>) payers.get(0);

        List<Lead> leads = (List<Lead>) payers.get(1);

        Boolean accepted = accounts.isEmpty() && !leads.isEmpty();

        if (accepted) {
            setPayer(leads.get(0));
        }

        return accepted;

    }

}