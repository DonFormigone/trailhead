@isTest
public class AccountProcessorTest {
    @isTest
    public static void TestAccountProcessor(){
        Account a = new Account();
        a.Name = 'Conta de Teste';
        Insert a;
        
        Contact c = new Contact();
        c.FirstName = 'Luis';
        c.LastName =  'Padilha';
        c.AccountId = a.Id;
        insert c;
        
        Set<Id> acctIds = new Set<Id>();
        acctIds.add(a.Id);
        
        Test.startTest();
        AccountProcessor.countContacts(acctIds);
        Test.stopTest();
    }

}