public class CreateAccountOpportunityCallback extends BaseCreateOpportunityCallback {

    AccountRepository accountRepository;

    AccountPaymentCallbackBuilder accountBuilder;

    public CreateAccountOpportunityCallback() {
        this.accountRepository = new AccountRepository();
        this.accountBuilder = new AccountPaymentCallbackBuilder();
    }

    override
    public Account buildAccount () {

        // criar conta
        Account account = accountBuilder.toAccount(getCallbackInbound());
        
        return accountRepository.save(account);

    }

    override
    public Boolean accept (List<List<SObject>> payers) {

        List<Account> accounts = (List<Account>) payers.get(0);

        List<Lead> leads = (List<Lead>) payers.get(1);

        return accounts.isEmpty() && leads.isEmpty();

    }

}