/**
 * @author eduardo.bisso - dev-builder
 */
public class AggregateResultInfo {

    AggregateResult result;

    public AggregateResultInfo(AggregateResult result) {
        this.result = result;
    }

    public Id getId (String field) {
        return (Id) result.get(field);
    }

    public String getString (String field) {
        return (String) result.get(field);
    }

    public Decimal getDecimal (String field) {
        return (Decimal) result.get(field);
    }

}