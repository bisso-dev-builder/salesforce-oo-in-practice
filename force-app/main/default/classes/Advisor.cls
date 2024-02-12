
/**
 * @author eduardo.bisso - dev-builder
 */
public class Advisor extends Employee {
   
    public List<Account> accounts;

    public Advisor() {        
        System.debug('Inicializei o Advisor com construtor padrão');
    }

    public Advisor(String name) {        
        super(name);
    }

    public Advisor (List<Account> accounts) {
        this();
        this.accounts = accounts;        
        System.debug('Inicializei o Advisor com construtor com accounts');
    }

    override
    public Decimal getBonus () {
        return (this.salary * 2) + 5000;
    }
}