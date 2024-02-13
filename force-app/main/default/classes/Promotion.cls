/**
 * @author eduardo.bisso - dev-builder
 */
public class Promotion {
    
    public String id;

    public String name;

    public Date dueDate;
    
    public Date createdDate;

    public String status;

    public Boolean isActive;

    public List<PromotionalProduct> promotionalProducts;
   
    public Promotion() {

        this.createdDate = Date.today();
        this.dueDate = Date.today().addDays(30);
        this.status = 'DRAFT';

        this.promotionalProducts = new List<PromotionalProduct>();

    }

    public void addPromotion ( PromotionalProduct promotionalProduct ) {
        
    }
}