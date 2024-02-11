/**
 * @author eduardo.bisso - dev-builder
 */
public class PricingService {

    FreightService freightService;
    
    public PricingService() {
        this.freightService = new FreightService();
    }

    public PriceAndAvailability checkPriceAndAvailability ( Account account
                                                        , Product2 product  ) {        
        return null;

    }

    public PriceAndAvailability checkPriceAndAvailability ( Account account
                                                        , Product2 product
                                                        , ShippingAddress shippingAddress ) {        
        PriceAndAvailability priceAndAvailability =
                                checkPriceAndAvailability (account, product);
                                
        FreightAmount freightAmount = freightService.applyFreight (account
                                                               , shippingAddress );
        
        priceAndAvailability.addFreight (freightAmount);

        return priceAndAvailability;                                                       
    }

    public PriceAndAvailability checkPriceAndAvailability ( Account account
                                                            , Product2 product
                                                            , Boolean consumeSpecialPrice ) {        
        PriceAndAvailability priceAndAvailability;
        if (consumeSpecialPrice)  {
            ///
            return priceAndAvailability;
        }

        return checkPriceAndAvailability (account,product);

    }

    public PriceAndAvailability checkPriceAndAvailabilityWithSpecialStock ( Account account
                                                            , Product2 product ) {        

        //                                                                 
        return null;

    }

    

}