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


    @isTest
    public static void shouldApplyDowncastAndUpcast () {   

        Analyst analyst = new Analyst ();
        analyst.code = '2321132';
        analyst.salary = 1000;

        //Upcast - implícito
        Employee employee = analyst;      

        Assert.areEqual ( 8750, employee.getBonus());

        //Downcast - sem explicitar vai gerar um erro de compilação
        //Manager manager = employee;

        //Cenário abaixo vai gerar um erro em tempo de execução

        //Downcast - aplicando o operado de cast ()
        //Manager manager = (Manager) employee;

        //Para exercitar crie uma instancia de Manager e faça os mesmos passos

    }


    @isTest
    public static void shouldSortEmployeeByName () {
        
        List<Employee> employees = new List<Employee> {
            new Advisor ('Bissolino')
            , new Manager ('Teste')
            , new VicePresidentLatam ('João')
            , new Analyst ('José')
            , new Director ('Andre')
        };

        System.debug( JSON.serialize(employees) );

        employees.sort();

        System.debug( JSON.serialize(employees) );

        Assert.areEqual ( 'Andre', employees.get(0).name );
        Assert.areEqual ( 'Bissolino', employees.get(1).name );
        Assert.areEqual ( 'José', employees.get(2).name );
        Assert.areEqual ( 'João', employees.get(3).name );
        Assert.areEqual ( 'Teste', employees.get(4).name );
        
    }

    @isTest
    public static void shouldValidateEmployees () {

        Analyst analyst = new Analyst ();
        analyst.code = '2321132';
        analyst.salary = 1000;

        Advisor advisor = new Advisor ();
        advisor.code = '2321132';
        advisor.salary = 1000;

        Manager manager = new Manager ();
        manager.code = '2321132';
        manager.salary = 1000;

        List<Validable> validables = new List<Validable> {
            analyst
            , advisor
            , manager
        };

        for (Validable validable : validables) {
            Assert.isTrue ( validable.isValid() );
        }

    }

}