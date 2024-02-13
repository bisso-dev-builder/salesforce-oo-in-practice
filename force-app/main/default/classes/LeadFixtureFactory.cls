@isTest
public class LeadFixtureFactory {
    
    public static Lead newLead (String name, String documentNumber) {
        return new Lead (FirstName = name, 
                        LastName = name,
                        Email = name + '@test.com',
                        DocumentNumber__c = documentNumber,
                        Company = 'Emp ' + name);
    }

    public static Lead createLead ( String name, String documentNumber ) {
        return createLead ( newLead (name, documentNumber));
    }

    public static Lead createLead (Lead lead) {
        insert lead;
        return lead;
    }

}