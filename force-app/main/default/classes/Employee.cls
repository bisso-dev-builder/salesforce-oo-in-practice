/**
 * @author eduardo.bisso - dev-builder
 */
public virtual class Employee {

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

    virtual
    public Decimal getBonus () {
        return 0;
    }

}