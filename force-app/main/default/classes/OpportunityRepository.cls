/**
 * @author eduardo.bisso - dev-builder
 */
public virtual class OpportunityRepository {

    virtual
    public List<AggregateResult> summarizeBacklogItems (List<String> accountIds) {

        return [ SELECT AccountId AccountId, SUM( BacklogItems__c ) TotalBacklog 
                    FROM Opportunity 
                    WHERE AccountId IN :accountIds
                    GROUP BY AccountId];

    }

    public Opportunity save ( Opportunity opportunity ) {
        upsert opportunity;
        return opportunity;
    }

}