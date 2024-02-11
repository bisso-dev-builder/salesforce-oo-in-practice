/**
 * @author eduardo.bisso - dev-builder
 */
@isTest
public class SObjectTest {

    @isTest
    public static void shouldAddError () {
    
        Account account = new Account (Name = 'Teste');
        account.put ('BillingStreet', 'Rua xyz');        
        account.addError('Informe o número do CNPJ');

        Assert.isTrue ( account.hasErrors() );

        Opportunity opportunity = new Opportunity (Name = 'Teste');
        opportunity.addError('Informe a Conta');

        Assert.isTrue ( opportunity.hasErrors() );

    }

}