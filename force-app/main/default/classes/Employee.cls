/**
 * @author eduardo.bisso - dev-builder
 */
public abstract class Employee {

    public String code;

    public String name;

    public String documentId;

    public Decimal salary;

    public Employee() {

        System.debug('Inicializei Employee');

    }

    public Employee(String name) {
        this();
        this.name = name;
    }

    abstract
    public Decimal getBonus ();

}