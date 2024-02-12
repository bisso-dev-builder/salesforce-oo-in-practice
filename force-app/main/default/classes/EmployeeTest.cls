/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class EmployeeTest {

    @isTest
    static void shouldCreateManagerAndAdvisor () {       

        final Decimal DEFAULT_MANAGER_SALARY = 15000;
        
        Manager manager = new Manager ( new List<Advisor> { new Advisor() } );
        manager.code = '12321';
        manager.name = 'Bisso Manager';
        manager.documentId = '34834873487';
        manager.salary = DEFAULT_MANAGER_SALARY;  
    
        Assert.areEqual ( DEFAULT_MANAGER_SALARY , manager.salary );
        Assert.isFalse ( manager.advisors.isEmpty() );
        
        Assert.areEqual( 26250 , manager.getBonus());

        final Decimal DEFAULT_ADVISOR_SALARY = 7000;

        Advisor advisor = new Advisor ( new List<Account> () );
        advisor.code = '12321';
        advisor.name = 'Bisso Manager';
        advisor.documentId = '34834873487';
        advisor.salary = DEFAULT_ADVISOR_SALARY;
                
        Assert.areEqual ( DEFAULT_ADVISOR_SALARY , advisor.salary );
        Assert.isTrue ( advisor.accounts.isEmpty() );

        Assert.areEqual( 12250 , advisor.getBonus());

        
    }


    @isTest
    public static void shouldApplyBonusToAnalyst () {   
        
        Employee employee = new Employee ();
        employee.code = '2321132';
        employee.salary = 1000;
        
        Assert.areEqual ( 1750, employee.getBonus());
    
    
        Analyst analyst = new Analyst ();
        analyst.code = '2321132';
        analyst.salary = 1000;
        
        Assert.areEqual ( 8750, analyst.getBonus());

    }

}