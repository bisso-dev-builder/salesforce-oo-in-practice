/**
 * @author eduardo.bisso - dev-builder
 */
public class Customer {

    public static final String PREMIUM_TYPE = 'Premium';
    
    private String name;

    public String document;

    public Decimal creditAmount;

    public Boolean isBlocked;

    public Address billingAddress;

    public Customer() {
        this.creditAmount = 0;
        this.isBlocked = false;
    }

    public void addCredit (Decimal amount) {
        
    }

    public class Address {

        public String street;

    }

}