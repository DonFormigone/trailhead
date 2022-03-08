@isTest
private class AccountManagerTest {

    @testSetup
    private static void testSetup() {
        Contact contact = new Contact();
        Account account = new Account();
        Case case = new Case();
        
    }
    private static testMethod void getAccountTest1() {
        Id recordId = createTestRecord();
        RestRequest request = new RestRequest();
        request.requestUri = 'https://na1.salesforce.com/services/apexrest/Accounts/'+ recordId +'/contacts' ;
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account account = AccountManager.getAccount();
        System.assert(account != null);
        System.assertEquals('Test record', account.Name);

    }
        
    static Id createTestRecord() {
        Account TestAcc = new Account(
          Name='Test record');
        insert TestAcc;
        Contact TestCon= new Contact(
        LastName='Test', 
        AccountId = TestAcc.id);
        return TestAcc.Id;
    }      
}