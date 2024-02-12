/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class BonusCalculatorTest {

    @isTest
    public static void shouldCalculateAllEmployeeBonus () {

        BonusCalculator calculator = new BonusCalculator();

        Advisor advisor = new Advisor();
        advisor.salary = 1000;

        Manager manager = new Manager();
        manager.salary = 1000;

        Director director = new Director();
        director.salary = 1000;

        Analyst analyst = new Analyst();
        analyst.salary = 1000;

        VicePresidentLatam vicePresident = new VicePresidentLatam ();
        vicePresident.salary = 1000;

        calculator.calculateBonus(advisor);
        calculator.calculateBonus(manager);
        calculator.calculateBonus(director);
        calculator.calculateBonus(analyst);
        calculator.calculateBonus(vicePresident);

        Assert.areEqual ( 33750.00 , calculator.getTotal ());

    }

}