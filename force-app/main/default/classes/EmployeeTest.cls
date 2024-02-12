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
        
        Assert.areEqual( 45000 , manager.getBonus());

        final Decimal DEFAULT_ADVISOR_SALARY = 7000;

        Advisor advisor = new Advisor ( new List<Account> () );
        advisor.code = '12321';
        advisor.name = 'Bisso Manager';
        advisor.documentId = '34834873487';
        advisor.salary = DEFAULT_ADVISOR_SALARY;
                
        Assert.areEqual ( DEFAULT_ADVISOR_SALARY , advisor.salary );
        Assert.isTrue ( advisor.accounts.isEmpty() );

        Assert.areEqual( 19000 , advisor.getBonus());

        
    }

    @isTest
    public static void shouldApplyBonusToAnalyst () {             
    
        Analyst analyst = new Analyst ();
        analyst.code = '2321132';
        analyst.salary = 1000;
        
        Assert.areEqual ( 8750, analyst.getBonus());

    }

    @isTest
    public static void shouldApplyBonusToVicePresidentLatam () {   

        VicePresidentLatam vicePresident = new VicePresidentLatam();
        vicePresident.code = '2321132';
        vicePresident.salary = 1000;
        
        Assert.areEqual ( 15000 , vicePresident.getBonus());

    }

}