@isTest
private class TestRestrictContactByName {
    @isTest static void insertContactByName() {
        Contact ctt = new Contact(FirstName = 'Luis', LastName ='INVALIDNAME'); 
    // Perform test
     Test.startTest();
     Database.SaveResult result = Database.insert(ctt, false);
     Test.stopTest();
        System.assert(!result.isSuccess());
    } 
}