/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class AccountFixtureFactory {

    public static Account newAccount (String name, String documentNumber) {
        return new Account (
            Name = name,
            DocumentNumber__c = documentNumber
        );
    }

    public static Account createAccount(String name, String documentNumber)  {
        return createAccount ( newAccount (name, documentNumber));
    }

    public static Account createAccount (Account account) {

        insert account;
        return account;

    }

}