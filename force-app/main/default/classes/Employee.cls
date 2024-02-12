/**
 * @author eduardo.bisso - dev-builder
 */
public abstract class Employee implements Comparable
                                            , Validable {

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

    public Integer compareTo(Object other) {

        Employee otherEmployee = (Employee) other;

        if ( otherEmployee == null ) return 1;

        if ( String.isEmpty (this.name) ) return -1;

        return this.name.compareTo(otherEmployee.name);
    }

    public Boolean isValid () {
        return !String.isEmpty( this.code )
                && ( this.salary != null && this.salary > 0 );
    }

}