/**
 * @author eduardo.bisso - dev-builder
 */
public class PaymentCallbackInboundService {

    PayerSearcher searcher;

    AccountRepository accountRepository;

    PricebookRepository priceBookRepository;

    OpportunityRepository opportunityRepository;

    AccountPaymentCallbackBuilder accountBuilder;

    LeadConverterService leadConverterService;

    OpportunityPaymentCallbackBuilder opportunityBuilder;

  
    public PaymentCallbackInboundService() {
        this.searcher = new PayerSearcher();
        this.accountRepository = new AccountRepository();
        this.priceBookRepository = new PricebookRepository();
        this.opportunityRepository = new OpportunityRepository();
        this.leadConverterService = new LeadConverterService();
        this.accountBuilder = new AccountPaymentCallbackBuilder();
        this.opportunityBuilder = new OpportunityPaymentCallbackBuilder();
    }

    public PaymentCallbackResponse processPayment ( PaymentCallbackInbound payment ) {

        List<List<SObject>> payers = searcher.search( payment?.payer?.document );

        List<Account> accounts = payers.get(0);

        List<Lead> leads = payers.get(1);

        Account account;

        PaymentCallbackInbound.Payer payer = payment?.payer;

        if (accounts.isEmpty() && leads.isEmpty()) {

            account = accountBuilder.toAccount(payment);

            accountRepository.save(account);

        }
        
        if (accounts.isEmpty() && !leads.isEmpty()) {

            Database.LeadConvertResult convertResult 
                                = this.leadConverterService.convertWithoutOpportunity( leads.get(0) );

            account = new Account( Id = convertResult.getAccountId());

        }

        if (!accounts.isEmpty()) {

            account =  accounts.get(0);

        }

        Pricebook2 pricebook = this.priceBookRepository.findByName('Campanha DevBuilder');

        Opportunity opportunity = opportunityBuilder.toOpportunity(payment, pricebook, account);

        opportunityRepository.save(opportunity);

        return new PaymentCallbackResponse(opportunity.Id);
    }
    
}