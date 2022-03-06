@isTest
public with sharing class AccountTriggerTest {
    @isTest
    static void TestCreate200Records(){
        List<Account> accs = new List<Account>();
        for(Integer i=0; i<200; i++){
            Account acc = new Account(Name='Teste Account ' + i, BillingState='CA');
            accs.add(acc);
        }
        Test.startTest();
            insert accs;
        Test.stopTest();

        List<Account> accList = [SELECT ShippingState FROM Account];
        for (Account a : accList) {
            System.assertEquals('CA', a.ShippingState, 'ERROR');
        }
    }
}