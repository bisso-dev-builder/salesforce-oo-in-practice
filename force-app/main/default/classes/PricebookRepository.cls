/**
 * @author eduardo.bisso - dev-builder
 */
public class PricebookRepository {

    public Pricebook2 findByName (String name) {
        return [SELECT Id 
                FROM Pricebook2 
                WHERE Name = : name
                    AND IsActive = true
                LIMIT 1];
    }

}