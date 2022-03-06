@isTest
public class AddPrimaryContactTest {
    @isTest 
        static void TestList(){
            List<Account> Teste = new List<Account>();
            for(Integer a=0; a<50;a++){
                Teste.add(new Account(BillingState = 'CA', name = 'Test' + a));
            }
            for(Integer c=0; c<50; c++){
                Teste.add(new Account (BillingState = 'NY', name = 'Test' + c));
                }
            insert Teste;

            Contact lContact = new Contact();
            lContact.FirstName = 'demo';
            lContact.LastName = 'demo';
            insert lContact;
            String state = 'CA';
            AddPrimaryContact apc = new AddPrimaryContact(lContact, state);
            Test.startTest();
                System.enqueueJob(apc);
            Test.stopTest();
        } 

}