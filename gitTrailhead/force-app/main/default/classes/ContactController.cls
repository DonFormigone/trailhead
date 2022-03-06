public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    
    public static List<Contact> getContacts(){
        return [SELECT FirstName, LastName, Email 
        FROM CONTACT
        WITH SECURITY_ENFORCED
        ORDER BY FirstName];
    }
}