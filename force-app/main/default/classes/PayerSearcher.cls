/**
 * @author eduardo.bisso - dev-builder
 */
public class PayerSearcher {

    public List<List<SObject>> search ( String payerDocument ) {

        return [FIND :payerDocument
                    IN ALL FIELDS 
                RETURNING Account(Id), Lead(Id)];

    }

}