/**
 * @author eduardo.bisso - dev-builder
 */
public class PaymentCallbackInboundService {

    PayerSearcher searcher;

    AccountRepository accountRepository;

    PricebookRepository priceBookRepository;

    OpportunityRepository opportunityRepository;
  
    public PaymentCallbackInboundService() {
        this.searcher = new PayerSearcher();
        this.accountRepository = new AccountRepository();
        this.priceBookRepository = new PricebookRepository();
        this.opportunityRepository = new OpportunityRepository();
    }

    public PaymentCallbackResponse processPayment ( PaymentCallbackInbound payment ) {

        List<List<SObject>> payers = searcher.search( payment?.payer?.document );

        List<Account> accounts = payers.get(0);

        List<Lead> leads = payers.get(1);

        Account account;

        PaymentCallbackInbound.Payer payer = payment?.payer;

        if (accounts.isEmpty() && leads.isEmpty()) {

            account = new Account (
                Name = payer.name,
                DocumentNumber__c = payer.document,
                AccountSource = 'Campanha DevBuilder',
                BillingStreet = payer?.billing?.street,
                BillingCity = payer?.billing?.city,
                BillingState = payer?.billing?.state,
                BillingPostalCode = payer?.billing?.zipCode,
                BillingCountry = payer?.billing?.country
            );

            accountRepository.save(account);

        }
        
        if (accounts.isEmpty() && !leads.isEmpty()) {

            // converter lead em conta

        }

        if (!accounts.isEmpty()) {

            // só associar a conta

        }

        Pricebook2 pricebook = this.priceBookRepository.findByName('Campanha DevBuilder');

        Opportunity opportunity = new Opportunity (
            Name = payment?.payer.name,
            AccountId = account.Id,
            Pricebook2Id = priceBook.Id,
            CloseDate = Date.today(),
            StageName = 'Closed Won',
            LeadSource = 'Campanha DevBuilder'
        );

        opportunityRepository.save(opportunity);

        return new PaymentCallbackResponse(opportunity.Id);
    }
    
}