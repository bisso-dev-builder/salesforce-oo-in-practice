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

            AggregateResultInfo result = new AggregateResultInfo(item);

            Account account = new Account (
                Id = result.getString('AccountId')
                , BacklogItems__c = result.getDecimal('TotalBacklog')
            );

            accounts.add(account);

        }

        // update account

        return accounts;

    }

}