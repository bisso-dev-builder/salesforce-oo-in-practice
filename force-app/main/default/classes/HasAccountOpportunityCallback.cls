public class HasAccountOpportunityCallback extends BaseCreateOpportunityCallback {
    
    override
    public Account buildAccount () {
        return (Account) getPayer();
    }
    
    override
    public Boolean accept (List<List<SObject>> payers) {

        List<Account> accounts = (List<Account>) payers.get(0);

        Boolean accepted = !accounts.isEmpty();
        
        if (accepted) {
            setPayer(accounts.get(0));
        }

        return accepted;

    }

}