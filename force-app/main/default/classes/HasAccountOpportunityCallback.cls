public class HasAccountOpportunityCallback extends BaseCreateOpportunityCallback {
    
    override
    public Account buildAccount () {
        return (Account) getPayer();
    }


}