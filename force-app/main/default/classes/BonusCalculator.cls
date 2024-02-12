/**
 * @author eduardo.bisso - dev-builder
 */
public class BonusCalculator {

    Decimal totalBonus;

    public Decimal calculateBonus ( Advisor advisor ) {
        return this.totalBonus += advisor.getBonus();
    }

    public Decimal calculateBonus ( Manager manager ) {
        return this.totalBonus += manager.getBonus();
    }

    public Decimal calculateBonus ( Analyst analyst ) {
        return this.totalBonus += analyst.getBonus();
    }

    public Decimal calculateBonus ( Director director ) {
        return this.totalBonus += director.getBonus();
    }

    public Decimal calculateBonus ( VicePresidentLatam vicePresident ) {
        return this.totalBonus += vicePresident.getBonus();
    }

    public Decimal getTotal() {
        return totalBonus;
    }

}
