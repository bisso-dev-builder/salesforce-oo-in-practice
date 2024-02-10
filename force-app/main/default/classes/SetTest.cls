/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class SetTest {

    public static void cleanCodeMoment () {

        //Meaningful names

        //Good - Plural Form 
        Set<Account> accounts;
        Set<Account> pendingAccounts;
        Set<Account> approvedAccounts;
        Set<Account> commercialAccounts;

        //Bad NOT USE - Prefix
        Set<Account> setAccount;
        Set<Account> stAccounts;

        //Bad NOT USE - Sufix
        Set<Account> accountSet;
        Set<Account> accountSt;

        //Bad NOT USE - Acrônimos
        Set<Account> accs;
        Set<Account> accSt;

    }

    @isTest
    public static void shouldCreateSetCollection () {
        
        Set<Account> accounts = new Set<Account> ( ListTest.setupAccounts() );

        Assert.areEqual( 20, accounts.size() );
        
        accounts.add( new Account(Name = 'Test0', BillingState = 'SP'));
        accounts.add( new Account(Name = 'Test1', BillingState = 'SP'));
        
        Assert.areEqual( 22 , accounts.size() );
       
    }

    @isTest
    public static void shouldIterateSetCollection () {              

        Set<Account> accounts = new Set<Account> ( ListTest.setupAccounts() );
        accounts.add( new Account(Name = 'Test0', BillingState = 'SP'));
        accounts.add( new Account(Name = 'Test1', BillingState = 'SP'));
        
        for (Account account : accounts) {
            System.debug(account);
        }
        
    }

}