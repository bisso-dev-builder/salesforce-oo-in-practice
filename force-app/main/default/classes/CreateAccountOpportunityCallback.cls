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

}