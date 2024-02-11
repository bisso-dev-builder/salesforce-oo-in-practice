/**
 * @author eduardo.bisso - dev-builder
 */
public class Manager extends Employee {

    public List<Advisor> advisors;

    public Manager() {
        System.debug('Inicializei o Manager');
        this.advisors = new List<Advisor> ();
    }

    public Manager(String name) {
        super(name);
    }

    public Manager(List<Advisor> advisors) {
        this();
        this.advisors = advisors;
    }
}