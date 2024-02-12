/**
 * @author eduardo.bisso - dev-builder
 */
public class VicePresidentLatam extends Employee {
    
    override
    public Decimal getBonus() {
        return this.salary * 15;
    }

}