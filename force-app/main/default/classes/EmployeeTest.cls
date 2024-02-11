/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class EmployeeTest {

    @isTest
    static void shouldCreateManagerAndAdvisor () {       

        final Decimal DEFAULT_MANAGER_SALARY = 15000;
        
        Manager manager = new Manager ();
        manager.code = '12321';
        manager.name = 'Bisso Manager';
        manager.documentId = '34834873487';
        manager.salary = DEFAULT_MANAGER_SALARY;
        manager.advisors = new List<Advisor> ();
        
        Assert.areEqual ( DEFAULT_MANAGER_SALARY , manager.salary );
        
        Assert.isTrue ( manager.advisors.isEmpty() );
        
        final Decimal DEFAULT_ADVISOR_SALARY = 7000;
        
        Advisor advisor = new Advisor ();
        advisor.code = '12321';
        advisor.name = 'Bisso Manager';
        advisor.documentId = '34834873487';
        advisor.salary = DEFAULT_ADVISOR_SALARY;
        advisor.accounts = new List<Account> ();
                
        Assert.areEqual ( DEFAULT_ADVISOR_SALARY , advisor.salary );
        
        Assert.isTrue ( advisor.accounts.isEmpty() );
        
    }
}