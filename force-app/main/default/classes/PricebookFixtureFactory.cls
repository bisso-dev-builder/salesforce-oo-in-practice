/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class PricebookFixtureFactory {

    public static Pricebook2 newPricebook ( String name ) {
        return new Pricebook2 (Name = name,
                               IsActive = true);
    }

    public static Pricebook2 createPricebook ( String name ) {
        return createPricebook ( newPricebook ( name ));
    }

    public static Pricebook2 createPricebook ( Pricebook2 pricebook ) {
        upsert pricebook;
        return pricebook;
    }
}