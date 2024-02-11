/**
 * @author eduardo.bisso - dev-builder
 */
public class PriceAndAvailability {
    
    public Decimal unitPrice;

    public String unitOfMeasure;
    
    public Date expectedDeliveryDate;

    public FreightAmount freightAmount;
    
    public PriceAndAvailability() {

    }

    public void addFreight (FreightAmount freightAmount) {
        this.freightAmount = freightAmount;
    }

}