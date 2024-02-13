/**
 * @author eduardo.bisso - dev-builder
 */
public class PaymentCallbackInbound {

    public String transactionId;

    public String orderId;

    public String periodType;

    public String fee;
    
    public String paymentFee;

    public String transactionType;

    public String productType;

    public String paymentType;

    public String paymentCycle;

    public String productCode;

    public String productId;

    public String paymentStatus;
    
    public String initialPaymentAmount;
    
    public String business;

    public Decimal tax;
    
    public Decimal amount;
    
    public DateTime paymentDate;
    
    public Decimal paymentGross;
    
    public String protectionEligibility;
    
    public DateTime createdDate;

    public Decimal amountPerCycle;
        
    public Address shippingAddress;
    
    public String nextPaymentDate;
    
    public String currencyCode;
            
    public String transactionSubject;

    public Payer payer;
        
    public PaymentCallbackInbound() {

    }

    public class Payer {

        public String id;
        public String name;
        public String email;
        public String status;
        public String document;

        public Address shipping;
        public Address billing;

    }

    public class Address {

        public String street;
        public String streetNumber;
        public String streetAdditionalInfo;
        public String city;
        public String state;
        public String country;
        public String zipCode;

    }

}