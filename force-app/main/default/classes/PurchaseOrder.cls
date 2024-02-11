/**
 * @author eduardo.bisso
 */
public class PurchaseOrder {

    String purchaseOrderNumber;

    Account account;

    Date needByDate;

    Address billingAddress;
    
    Address shippingAddress;

    List<Item> items;

    public PurchaseOrder() {
        this.items = new List<Item> ();
        this.needByDate = Date.today().addDays(7);
    }

    public PurchaseOrder(String purchaseOrderNumber
                       , Account account ) {

        this();
        
        this.account = account;        
        this.purchaseOrderNumber = purchaseOrderNumber;

    }

    public PurchaseOrder( String purchaseOrderNumber
                        , Account account                        
                        , Address billingAddress ) {        

        this(purchaseOrderNumber,account);
        this.billingAddress = billingAddress;                             
    }    

    public PurchaseOrder( String purchaseOrderNumber
                        , Account account
                        , Address billingAddress
                        , Address shippingAddress ) {        

        this(purchaseOrderNumber,account, billingAddress);
        this.shippingAddress = shippingAddress;
    }    

    public PurchaseOrder( Account account
                        , List<Item> items ) {        

        this.account = account;
        this.items = items;
        
    }        

    public void addItem ( Item item ) {
        this.items.add(item);
    }

    public class Address {

        public String street;
        public String streetNumber;
        public String additionalInfo;
        public String city;
        public String zipCode;
        public String state;

    }

    public class Item {

        public String id;
        public String productCode;
        public String description;
        public String priceBookEntryId;
        public Decimal quantity;
        public Decimal price;

        public Item withId (String id) {

            this.id = id;

            return this;
        }

        public Item withProductCode (String productCode) {

            this.productCode = productCode;

            return this;
        }

        public Item withDescription (String description) {

            this.description = description;

            return this;
        }

        public Item withPriceBookEntryId (String priceBookEntryId) {

            this.priceBookEntryId = priceBookEntryId;

            return this;
        }

        public Item withQuantity (Decimal quantity) {

            this.quantity = quantity;

            return this;
        }

        public Item withPrice (Decimal price) {

            this.price = price;

            return this;
        }


    }

}