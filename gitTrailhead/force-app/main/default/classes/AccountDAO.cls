public with sharing class AccountDAO {
    public static Account getAccountByCNPJ(String cnpj){
        return [
            SELECT 
                Id, 
                AccountNumber, 
                CNPJ__c
            FROM
                Account
            WHERE
                CNPJ__c =: cnpj
        ];
    }
}