/**
 * @author ercarval - topi/brq
 */
@isTest
public class ListTest {

    public static void cleanCodeMoment () {

        //Meaningful names

        //Good - Plural Form 
        List<Account> accounts;
        List<Account> pendingAccounts;
        List<Account> approvedAccounts;
        List<Account> commercialAccounts;

        //Bad NOT USE - Prefix
        List<Account> listAccount;
        List<Account> lstAccounts;

        //Bad NOT USE - Sufix
        List<Account> accountList;
        List<Account> accountLst;

        //Bad NOT USE - Acrônimos
        List<Account> accs;
        List<Account> accList;

    }

    public static List<Account> setupAccounts () {
        
        List<Account> accounts = new List<Account>();
        
        for (Integer i = 0; i < 20; i++) {
            accounts.add ( new Account ( Name = 'Test' + i ) );
        }

        return accounts;
    }

    @isTest
    public static void shouldCreateListCollection () {
        
        List<Account> accounts = setupAccounts();
                
        Assert.areEqual( 'Test0' , accounts.get(0).Name );
        Assert.areEqual( 20 , accounts.size() );
        
        Account[] clonedAccounts = accounts.deepClone();
        Assert.areEqual( 'Test0' , clonedAccounts[0].Name );
        Assert.areEqual( 20 , clonedAccounts.size() );


    }

    @isTest
    public static void shouldIterateListCollection () {
        
        List<Account> accounts = setupAccounts();
        
        for ( Account account : accounts ) {
            System.debug( account );
        }

    }

}