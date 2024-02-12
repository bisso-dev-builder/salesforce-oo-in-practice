/**
 * @author eduardo.bisso - dev-builder
 */
public class VicePresidentLatam extends Employee {
   
    public VicePresidentLatam() {
    }

    public VicePresidentLatam(String name) {
        super(name);
    }

    override
    public Decimal getBonus() {
        return this.salary * 15;
    }

}