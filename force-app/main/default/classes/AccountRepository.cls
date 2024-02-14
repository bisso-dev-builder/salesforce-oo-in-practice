/**
 * @author eduardo.bisso - dev-builder
 */
public class AccountRepository {

    public Account save ( Account account ) {
        upsert account;
        return account;
    }


}