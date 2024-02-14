/**
 * @author eduardo.bisso - dev-builder
 */
public class LeadConverterService {

    public static final String DEFAULT_CONVERTED_STATUS = 'Closed - Converted';

    public List<Database.LeadConvertResult> convertWithoutOpportunity ( List<Lead> leads ) {
        
        List<Database.LeadConvert> leadsToConvert = new List<Database.LeadConvert>();

        for (Lead lead : leads) {

            leadsToConvert.add( buildWithoutOpportunity (lead, DEFAULT_CONVERTED_STATUS) );

        }

        return Database.convertLead( leadsToConvert );

    }


    public Database.LeadConvertResult convertWithoutOpportunity ( Lead lead ) {

        return Database.convertLead( buildWithoutOpportunity (lead, DEFAULT_CONVERTED_STATUS));

    }


    private Database.LeadConvert buildWithoutOpportunity(Lead lead, String convertedStatus ) {
        
        Database.LeadConvert leadConvert = new Database.LeadConvert ();

        leadConvert.setLeadId( lead.Id );
        leadConvert.setConvertedStatus(convertedStatus);
        leadConvert.setDoNotCreateOpportunity(true);

        return leadConvert;

    }

}