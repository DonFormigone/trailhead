@isTest
public class DataFactory {
   
    public static List<Account> createBatchAccounts(Integer numAccts, String type, String accNumber ) {
        //Teste para criação em Lote de Accounts do tipo Parceiro
        List<Account> accts = new List<Account>(); 
        for(Integer i=0;i<numAccts;i++) {
            Account a = new Account(Name='TestAccount ' + type + i, 
            AccountNumber= accNumber,
            Type= type);
            accts.add(a);
        }
        insert accts;      
        return accts;
    }
}