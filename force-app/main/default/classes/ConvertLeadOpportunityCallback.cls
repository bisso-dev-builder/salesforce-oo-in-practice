
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


}