public with sharing class ContactDAO {

    public static Contact getContactById(String contactId){
        return [SELECT Id, Name, Phone, AccountId FROM Contact WHERE Id =:contactId];
    }

}