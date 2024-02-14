public abstract class BaseCreateOpportunityCallback {

    PricebookRepository pricebookRepository;

    OpportunityRepository opportunityRepository;

    OpportunityPaymentCallbackBuilder opportunityBuilder;

    PaymentCallbackInbound callbackInbound;

    SObject payer;

    public BaseCreateOpportunityCallback() {
        this.pricebookRepository = new PricebookRepository();
        this.opportunityRepository = new OpportunityRepository();
        this.opportunityBuilder = new OpportunityPaymentCallbackBuilder();
    }

    public Opportunity createOpportunity ( PaymentCallbackInbound callbackInbound ) {

        this.callbackInbound = callbackInbound;

        Pricebook2 priceBook = pricebookRepository.findByName('Campanha DevBuilder');

        Opportunity opportunity = opportunityBuilder.toOpportunity(this.callbackInbound
                                                                    , priceBook
                                                                    , buildAccount ());

        return opportunityRepository.save(opportunity);


    }

    public SObject getPayer () {
        return this.payer;
    }

    public void setPayer (SObject payer) {
        this.payer = payer;
    }

    public PaymentCallbackInbound getCallbackInbound () {
        return this.callbackInbound;
    }

    public abstract Account buildAccount ();   

}