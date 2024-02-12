/**
 * @author eduardo.bisso - dev-builder
 */
public class Director extends Employee {

    public Director() {
    }

    public Director(String name) {
        super(name);
    }

    override
    public Decimal getBonus () {
        return this.salary * 5;
    }

}