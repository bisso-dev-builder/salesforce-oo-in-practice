/**
 * 
 */
public class CreateOpportutityCallbackFactory {

    List<BaseCreateOpportunityCallback> strategies;
    
    public CreateOpportutityCallbackFactory() {
        this.strategies = new List<BaseCreateOpportunityCallback> {
            new CreateAccountOpportunityCallback()
            , new ConvertLeadOpportunityCallback()
            , new HasAccountOpportunityCallback()
        };
    }

    public BaseCreateOpportunityCallback getStrategy ( List<List<SObject>> payers ) {

        for ( BaseCreateOpportunityCallback strategy : strategies ) {

            if (strategy.accept(payers)) {
                return strategy;
            }

        }

        return null;

    }

}