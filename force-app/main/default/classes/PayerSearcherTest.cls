/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class PayerSearcherTest {

    @isTest
    public static void shouldReturnAccount () {

        String expectedDocument = '17333264050';

        Account account = AccountFixtureFactory.createAccount('Bisso', expectedDocument);

        Test.setFixedSearchResults( new List<String> {account.Id} );

        Test.startTest();
        
        List<List<SObject>> results = new PayerSearcher().search(expectedDocument);
        
        Test.stopTest();

        Assert.isFalse( results.isEmpty() );

        System.debug( JSON.serialize( results ) );

        Assert.areEqual( 2 , results.size() );

        Assert.areEqual( 1 , results.get(0).size() );
        Assert.areEqual( 0 , results.get(1).size() );

        Account returnedAccount = (Account) results.get(0).get(0);

        Assert.areEqual( account.Id , returnedAccount.Id );

    
    }

    @isTest
    public static void shouldReturnLead () {

        String expectedDocument = '17333264050';

        Lead lead = LeadFixtureFactory.createLead('Bisso', expectedDocument);

        Test.setFixedSearchResults( new List<String> {lead.Id} );

        Test.startTest();
        
        List<List<SObject>> results = new PayerSearcher().search(expectedDocument);
        
        Test.stopTest();

        Assert.isFalse( results.isEmpty() );

        System.debug( JSON.serialize( results ) );

        Assert.areEqual( 2 , results.size() );

        Assert.areEqual( 0 , results.get(0).size() );
        Assert.areEqual( 1 , results.get(1).size() );

        Lead returnedLead = (Lead) results.get(1).get(0);

        Assert.areEqual( lead.Id , returnedLead.Id );

    }

    @isTest
    public static void shouldReturnAccountAndLead () {

        String expectedDocument = '17333264050';

        Account account = AccountFixtureFactory.createAccount('Bisso', expectedDocument);

        Lead lead = LeadFixtureFactory.createLead('Bisso', expectedDocument);

        Test.setFixedSearchResults( new List<String> {account.Id, lead.Id} );

        Test.startTest();
        
        List<List<SObject>> results = new PayerSearcher().search(expectedDocument);
        
        Test.stopTest();

        Assert.isFalse( results.isEmpty() );

        System.debug( JSON.serialize( results ) );

        Assert.areEqual( 2 , results.size() );

        Assert.areEqual( 1 , results.get(0).size() );
        Assert.areEqual( 1 , results.get(1).size() );

        Account returnedAccount = (Account) results.get(0).get(0);

        Assert.areEqual( account.Id , returnedAccount.Id );

        Lead returnedLead = (Lead) results.get(1).get(0);

        Assert.areEqual( lead.Id , returnedLead.Id );

    }

    @isTest
    public static void shouldNotReturnAccountAndLead () {

        String expectedDocument = '17333264050';

        Account account = AccountFixtureFactory.createAccount('Bisso', expectedDocument);

        Test.startTest();
        
        List<List<SObject>> results = new PayerSearcher().search('17333264051');
        
        Test.stopTest();

        Assert.isFalse( results.isEmpty() );

        System.debug( JSON.serialize( results ) );

        Assert.areEqual( 2 , results.size() );

        Assert.areEqual( 0 , results.get(0).size() );
        Assert.areEqual( 0 , results.get(1).size() );

    }


}