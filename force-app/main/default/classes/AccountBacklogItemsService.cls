/**
 * @author eduardo.bisso - dev-builder
 */
public class AccountBacklogItemsService {

    OpportunityRepository repository;

    public AccountBacklogItemsService() {
        this.repository = new OpportunityRepository();
    }

    public List<Account> enrichWithBacklogItems (   List<String> accountIds ) {

        List<AggregateResult> backlogItems = this.repository.summarizeBacklogItems(accountIds);

        List<Account> accounts = new List<Account>();

        for (AggregateResult item : backlogItems ) {
           
            Account account = new Account (
                Id =  (String) item.get('AccountId')
                , BacklogItems__c = (Decimal) item.get('TotalBacklog')
            );

            accounts.add(account);

        }

        // update account

        return accounts;

    }

}