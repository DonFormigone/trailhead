@isTest
public with sharing class ValidateCPFCNPJTriggerTest {
    @isTest static void  createAccountParceiro() {
        // Instancias do teste
        Account[] acct = DataFactory.createBatchAccounts(1, 'Parceiro', '');
        // Executar teste
        Test.startTest();
        acct[0].Name = 'Inovex';
        Database.SaveResult result = Database.update(acct[0],false);
        Test.stopTest();
        System.assert(!result.isSuccess());

    }
    @isTest static void  createAccountParceiroOk() {
        // Instancias do teste
        Account[] acct = DataFactory.createBatchAccounts(1, 'Parceiro', 'A0000121');
        // Executar teste
        Test.startTest();
        acct[0].Name = 'Inovex';
        Database.SaveResult result = Database.update(acct[0],false);
        Test.stopTest();
        System.assert(!result.isSuccess());

    }
     @isTest static void  createAccountConsumidorFinalFail() {
        // Instancias do teste
        Account[] acct = DataFactory.createBatchAccounts(1, 'Consumidor Final', '');
        // Executar teste
        Test.startTest();
        acct[0].Name = 'Inovex';
        Database.SaveResult result = Database.update(acct[0],false);
        Test.stopTest();
        System.assert(!result.isSuccess());

    }
    @isTest static void  createAccountConsumidorFinalOk() {
        // Instancias do teste
        Account[] acct = DataFactory.createBatchAccounts(1, 'Consumidor Final', 'A0000121');
        // Executar teste
        Test.startTest();
        acct[0].Name = 'Inovex';
        Database.SaveResult result = Database.update(acct[0],false);
        Test.stopTest();
        System.assert(!result.isSuccess());

    }
}